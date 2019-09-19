package planetwars.strategies;


import org.jgrapht.*;
import org.jgrapht.alg.interfaces.ShortestPathAlgorithm;
import org.jgrapht.alg.shortestpath.DijkstraShortestPath;
import org.jgrapht.graph.*;
import planetwars.publicapi.*;


import java.util.*;

public class MyStrategy implements IStrategy {
    private SimpleWeightedGraph<Integer,DefaultWeightedEdge> planetmap = new SimpleWeightedGraph<>(DefaultWeightedEdge.class);
    private boolean planetmapinitialized = false;
    //Start planet Id, Target planet Id, List of planets that form shortest path
    private HashMap<Integer,HashMap<Integer,List<Integer>>> shortestpaths = new HashMap<>();

    @Override
    public void takeTurn(List<IPlanet> planets, IPlanetOperations planetOperations, Queue<IEvent> eventsToExecute) {
    try {
        if (!planetmapinitialized)
        {
            planetmapinitialized = true;
            initializeplanetmap(planets);
        }
        Set<IEvent> todo = new HashSet<>();
        Set<IVisiblePlanet> conqueredVisiblePlanets = new HashSet<>();
        Set<IVisiblePlanet> unconqueredVisiblePlanets = new HashSet<>();
        Set<IVisiblePlanet> borderVisiblePlanets = new HashSet<>();
        for (IPlanet planet : planets)
        {
            if (planet instanceof IVisiblePlanet && ((IVisiblePlanet) planet).getOwner() == Owner.SELF)
            {
                conqueredVisiblePlanets.add((IVisiblePlanet) planet);
            }
            else if (planet instanceof IVisiblePlanet)
            {
                unconqueredVisiblePlanets.add((IVisiblePlanet) planet);
            }
            //Adds all planets that are the boundary between mine and enemy territory to borderlist
            for(IPlanet myplanet : conqueredVisiblePlanets)
            {
                //For each of its edges
                for (IEdge e : myplanet.getEdges())
                {
                    //if it is next to an enemy
                    IPlanet neightbor = getIPlanetFromId(planets,e.getDestinationPlanetId());
                    if (unconqueredVisiblePlanets.contains(neightbor))
                    {
                        borderVisiblePlanets.add((IVisiblePlanet) myplanet);
                    }
                }
            }
        }
        //For all border planets
        for(IVisiblePlanet myplanet : borderVisiblePlanets)
        {
            //For all edges of each border planet
            for (IEdge e : myplanet.getEdges())
            {
                //If that edge leads to an enemy
                IPlanet neightbor = getIPlanetFromId(planets,e.getDestinationPlanetId());
                if (unconqueredVisiblePlanets.contains(neightbor))
                {
                    //Checks if it is available to target and capture
                    IVisiblePlanet target = (IVisiblePlanet)neightbor;
                    long targetBorder = 0; //targetBorder is the sum of the populations of my planets surrounding the target planet
                    Set<IVisiblePlanet> validborderplanets = new HashSet<>();
                    //for all edges of the enemy edge
                    for (IEdge enemyedge : target.getEdges())
                    {
                        IPlanet myborderplanet = getIPlanetFromId(planets,enemyedge.getDestinationPlanetId());
                        if (borderVisiblePlanets.contains(myborderplanet))
                        {
                            targetBorder += ((IVisiblePlanet)myborderplanet).getPopulation();
                            validborderplanets.add((IVisiblePlanet)myborderplanet);
                        }
                    }
                    //Empty enemy planet
                    if(target.getPopulation()==0&&myplanet.getPopulation()+sumTotalShuttlePopulation(target.getIncomingShuttles(),conqueredVisiblePlanets)>2)
                    {
                        todo.add(planetOperations.transferPeople(myplanet,target,myplanet.getPopulation()/2));
                    }
                    //Not empty enemy planet
                    else if(target.getPopulation()<targetBorder/1.8)
                    {
                        for(IVisiblePlanet validborderplanet:validborderplanets)
                        {
                            todo.add(planetOperations.transferPeople(validborderplanet,target,(int)(0.8*validborderplanet.getPopulation())));
                        }
                    }
                }
            }
        }
        for(IPlanet myplanet:conqueredVisiblePlanets)
        //If it is conquered but not in the border planets list
        if (!borderVisiblePlanets.contains(myplanet))
        {
            //for all edges of that planet
            for (IEdge e : myplanet.getEdges())
            {
                IPlanet borderplanet = getIPlanetFromId(planets,e.getDestinationPlanetId());
                //If the planet that is not a borderplanet has a border planet next to it
                if(borderVisiblePlanets.contains(borderplanet))
                {
                    todo.add(planetOperations.transferPeople(myplanet,borderplanet,((IVisiblePlanet)myplanet).getPopulation()-1));
                }//If it is not a border planet and does not have a border planet next to it
                else
                {
                    int max = 0;
                    for(IVisiblePlanet bestborderplanet:borderVisiblePlanets)
                    {
                        if(max<bestborderplanet.getHabitability())
                        {
                            max = bestborderplanet.getHabitability();
                            borderplanet = bestborderplanet;
                        }
                    }
                    Integer target = shortestnext(myplanet.getId(),borderplanet.getId(),shortestpaths);
                    todo.add(planetOperations.transferPeople(myplanet,getIPlanetFromId(planets,target),((IVisiblePlanet)myplanet).getPopulation()-1));
                }

            }


        }


        for(IEvent event:todo)
        {
            eventsToExecute.offer(event);
        }

    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
    }

    @Override
    public String getName() {
        return "wu000169Strategy";
    }

    @Override
    public boolean compete() {
        return true;
    }
    private void initializeplanetmap(List<IPlanet> planets)
    {

        for(IPlanet p:planets)
        {                                   //Creates all planets on map
            planetmap.addVertex(p.getId());
        }

        for(IPlanet p:planets)
        {
            for(IEdge e:p.getEdges())
            {
                DefaultWeightedEdge edge = planetmap.addEdge(p.getId(),e.getDestinationPlanetId());
                if(edge!=null) {
                    planetmap.setEdgeWeight(edge, e.getLength());
                }
            }
        }

        //Add list of shortest paths to dict
        DijkstraShortestPath<Integer,DefaultWeightedEdge> shortestgenerator = new DijkstraShortestPath<>(planetmap);
        for(IPlanet p:planets)
        {
            ShortestPathAlgorithm.SingleSourcePaths<Integer,DefaultWeightedEdge> shortestforp = shortestgenerator.getPaths(p.getId());
            HashMap<Integer,List<Integer>> dictppaths = new HashMap<>();
            for(IPlanet q:planets)
            {
                List<Integer> ptoq = shortestforp.getPath(q.getId()).getVertexList();
                dictppaths.put(q.getId(),ptoq);
            }
            shortestpaths.put(p.getId(),dictppaths);
        }


    }
    private int shortestnext(Integer fromPlanetId, Integer toPlanetId, HashMap<Integer,HashMap<Integer,List<Integer>>>  paths)
    {
        return paths.get(fromPlanetId).get(toPlanetId).get(1);
    }
    private boolean planetListContainsId(Set<IVisiblePlanet> planetlist,Integer id)
    {
        for(IVisiblePlanet p:planetlist)
        {
            if(p.getId()==id)
            {
                return true;
            }
        }
        return false;
    }

    private IVisiblePlanet getPlanetFromId(List<IPlanet> planetlist,Integer id)
    {
        for(IPlanet p:planetlist)
        {
            if(p.getId()==id)
            {
                return (IVisiblePlanet)p;
            }
        }
        return null;
    }

    private IPlanet getIPlanetFromId(List<IPlanet> planetlist,Integer id)
    {
        for(IPlanet p:planetlist)
        {
            if(p.getId()==id)
            {
                return p;
            }
        }
        return null;
    }

    private int sumTotalShuttlePopulation(List<IShuttle> shuttles,Set<IVisiblePlanet> conquered)
    {
        int sum = 0;
        for(IShuttle s:shuttles)
        {
            int friendly = 0;
            if(planetListContainsId(conquered,s.getSourcePlanetId()))
            {
                friendly = -1;
            }
            else
            {
                friendly = 1;
            }
            sum+= s.getNumberPeople()*friendly;

        }
        return sum;
    }

}