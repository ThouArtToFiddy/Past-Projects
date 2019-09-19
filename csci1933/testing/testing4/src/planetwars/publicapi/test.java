/*
package planetwars.publicapi;


import org.jgrapht.*;
import org.jgrapht.alg.interfaces.ShortestPathAlgorithm;
import org.jgrapht.alg.shortestpath.DijkstraShortestPath;
import org.jgrapht.graph.*;

import java.util.*;

public class MyStrategy implements IStrategy {
    private static DefaultDirectedWeightedGraph<Integer,IEdge> planetmap = new DefaultDirectedWeightedGraph<>(IEdge.class);
    private boolean planetmapinitialized = false;
    //Start planet Id, Target planet Id, List of planets that form shortest path
    private HashMap<Integer,HashMap<Integer,List<Integer>>> shortestpaths = new HashMap<>();

    public void takeTurn(List<IPlanet> planets, IPlanetOperations planetOperations, Queue<IEvent> eventsToExecute)
    {
        if(!planetmapinitialized)
        {
            initializeplanetmap(planets,planetOperations,eventsToExecute);
        }
        int length = planets.size();
        List<IVisiblePlanet> selfVisiblePlanets = new ArrayList<>();
        List<IVisiblePlanet> opponentVisiblePlanets = new ArrayList<>();
        List<IVisiblePlanet> neutralVisiblePlanets = new ArrayList<>();
        List<IVisiblePlanet> borderPlanets = new ArrayList<>();
        IPlanet targetPlanet;
        for (IPlanet planet : planets)
        {
            if (planet instanceof IVisiblePlanet && ((IVisiblePlanet) planet).getOwner() == Owner.SELF)
            {
                selfVisiblePlanets.add((IVisiblePlanet) planet);
            }
            else if (planet instanceof IVisiblePlanet&&((IVisiblePlanet) planet).getOwner()==Owner.OPPONENT)
            {
                opponentVisiblePlanets.add((IVisiblePlanet) planet);
            }
            else
            {
                neutralVisiblePlanets.add((IVisiblePlanet) planet);
            }
        }
        for(IVisiblePlanet myplanet:selfVisiblePlanets)
        {
            Set<IEdge> myplanetedges =  myplanet.getEdges();
            for(IEdge e:myplanetedges)
            {
                //If there are any neutral planets nearby
                if(planetListContainsId(neutralVisiblePlanets,e.getDestinationPlanetId()))
                {
                    if(myplanet.getPopulation()>1)
                    {
                        eventsToExecute.offer(planetOperations.transferPeople(myplanet,getPlanetFromId(neutralVisiblePlanets,e.getDestinationPlanetId()),1));
                    }
                }
                //If this planet is next to an enemy planet
                if(planetListContainsId(opponentVisiblePlanets,e.getDestinationPlanetId()))
                {
                    borderPlanets.add(myplanet);
                }
                //if this planet is not a border planet itself
                if(!planetListContainsId(borderPlanets,e.getSourcePlanetId()))
                {
                    //If this planet is next to a border planet
                    if(planetListContainsId(borderPlanets,e.getDestinationPlanetId()))
                    {
                        eventsToExecute.offer(planetOperations.transferPeople(myplanet,getPlanetFromId(borderPlanets,e.getDestinationPlanetId()),myplanet.getPopulation()-1));
                    }
                    //Else if this planet is not next to a border planet, send to closest border planet
                }


            }
        }
    }


    private void initializeplanetmap(List<IPlanet> planets, IPlanetOperations planetOperations, Queue<IEvent> eventsToExecute)
    {

        for(IPlanet p:planets)
        {                                   //Creates all planets on map
            planetmap.addVertex(p.getId());
        }
        for(IPlanet p:planets)
        {                                   // Links each planet, adds length(weight)
            for(IEdge e:planetmap.incomingEdgesOf(p.getId()))
            {
                planetmap.addEdge(e.getSourcePlanetId(),p.getId(),e);
                planetmap.setEdgeWeight(e,e.getLength());
            }

        }
        //Add list of shortest paths to dict
        DijkstraShortestPath<Integer,IEdge> shortestgenerator = new DijkstraShortestPath<>(planetmap);
        for(IPlanet p:planets)
        {

            ShortestPathAlgorithm.SingleSourcePaths<Integer,IEdge> shortestforp = shortestgenerator.getPaths(p.getId());
            HashMap<Integer,List<Integer>> dictppaths = new HashMap<>();
            for(IPlanet q:planets)
            {
                dictppaths.put(q.getId(),shortestforp.getPath(q.getId()).getVertexList());
            }
            shortestpaths.put(p.getId(),dictppaths);
        }


    }

    private boolean planetListContainsId(List<IVisiblePlanet> planetlist,Integer id)
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

    private IPlanet getPlanetFromId(List<IVisiblePlanet> planetlist,Integer id)
    {
        for(IVisiblePlanet p:planetlist)
        {
            if(p.getId()==id)
            {
                return p;
            }
        }
        System.out.println("Something was wrong with getPlanetFromID or planetListContainsId");
        return null;

    }


    public String getName() {
        return "FirstLast";
    }

    public boolean compete()
    {
        return true;
    }





    if (targetBorder > 2 * targetPopulation)
                        {
                            for (IEdge enemyedge : target.getEdges())
                            {
                                IPlanet targetborders = getPlanetFromId(planets, enemyedge.getDestinationPlanetId());
                                //If the borderplanet next to target has enough population and target isn't already being overwhelmed
                                if(((IVisiblePlanet) targetborders).getPopulation()>1&&sumTotalShuttlePopulation(target.getIncomingShuttles(),conqueredVisiblePlanets)>0)
                                eventsToExecute.offer(planetOperations.transferPeople(targetborders, target, (long) (0.75 * ((IVisiblePlanet) targetborders).getPopulation())));
                            }
                        }

}
*/