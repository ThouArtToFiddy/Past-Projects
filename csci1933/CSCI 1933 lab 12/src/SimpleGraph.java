/**
 This is a class derived and adapted from the textbook: DirectedGraph.java
 A class that implements the ADT directed graph.

 @author Frank M. Carrano
 @author Timothy M. Henry
 @version 4.0
 */
import java.util.*;

public class SimpleGraph<T> implements GraphInterface<T> {
    private HashMap<T,  VertexInterface<T>> vertices;
    private int edgeCount;

    public SimpleGraph() {
        vertices = new HashMap<T, VertexInterface<T>>();
        edgeCount = 0;
    }

    @Override
    public boolean addVertex(T vertexLabel) {
        return null == vertices.put(vertexLabel, new Vertex<>(vertexLabel));
    }

    @Override
    public boolean addEdge(T begin, T end, double edgeWeight) {
        boolean result = false;

        VertexInterface<T> beginVertex = vertices.get(begin);
        VertexInterface<T> endVertex = vertices.get(end);

        if ( (beginVertex != null) && (endVertex != null) )
            result = beginVertex.connect(endVertex, edgeWeight);

        if (result)
            edgeCount++;

        return result;
    }

    @Override
    public boolean addEdge(T begin, T end) {
        return addEdge(begin, end, 0);
    }

    @Override
    public boolean hasEdge(T begin, T end) {
        boolean found = false;

        VertexInterface<T> beginVertex = vertices.get(begin);
        VertexInterface<T> endVertex = vertices.get(end);

        if ( (beginVertex != null) && (endVertex != null) )
        {
            Iterator<VertexInterface<T>> neighbors = beginVertex.getNeighborIterator();
            while (!found && neighbors.hasNext())
            {
                VertexInterface<T> nextNeighbor = neighbors.next();
                if (endVertex.equals(nextNeighbor))
                    found = true;
            } // end while
        } // end if

        return found;
    }

    @Override
    public boolean isEmpty() {
        return vertices.isEmpty();
    }

    @Override
    public int getNumberOfVertices() {
        return vertices.size();
    }

    @Override
    public int getNumberOfEdges() {
        return edgeCount;
    }

    @Override
    public void clear() {
        vertices.clear();
        edgeCount = 0;
    }

    @Override
    public VertexInterface<T> getVertex(T label) {
        return vertices.get(label);
    }

    private class VertexIterator implements Iterator<VertexInterface<T>> {
        private Iterator<Map.Entry<T, VertexInterface<T>>> verticeIterator;

        private VertexIterator() {
            verticeIterator = vertices.entrySet().iterator();
        } // end default constructor

        public boolean hasNext() {
            return verticeIterator.hasNext();
        } // end hasNext

        public  VertexInterface<T> next() {
            return verticeIterator.hasNext() ? vertices.get(verticeIterator.next().getValue().getLabel()) : null;
        } // end next
    }

    public VertexIterator getVertexIterator() {
        return new VertexIterator();
    }

    @Override
    public Queue<VertexInterface<T>> breadthFirstSearch(T origin) {

        Queue<VertexInterface<T>> ordered = new LinkedList<>();
        Queue<VertexInterface<T>> todo = new LinkedList<>();
        todo.add(this.getVertex(origin));
        while(!todo.isEmpty())
        {
            VertexInterface current = todo.remove();
            current.visit();
            ordered.add(current);
            Iterator<VertexInterface<T>> iterator = current.getNeighborIterator();
            while (iterator.hasNext())
            {
                VertexInterface next = iterator.next();
                if(!next.isVisited())
                {
                    todo.add(next);
                }
            }
        }
        return ordered;
    }

    @Override
    public Queue<VertexInterface<T>> depthFirstSearchRecursive(T origin) {
        Queue<VertexInterface<T>> ordered = new LinkedList<>();
        depthFirstSearchHelper(origin,ordered);
        return ordered;
    }

    private void depthFirstSearchHelper(T origin, Queue<VertexInterface<T>> q) {
        q.add(this.getVertex(origin));
        this.getVertex(origin).visit();
        Iterator<VertexInterface<T>> iterator = this.getVertex(origin).getNeighborIterator();

        while(iterator.hasNext())
        {
            VertexInterface<T> next = iterator.next();
            if(!next.isVisited())
            {
                depthFirstSearchHelper(next.getLabel(),q);
            }
        }

    }

    @Override
    public Queue<VertexInterface<T>> depthFirstSearchIterative(T origin) {
        Queue<VertexInterface<T>> ordered = new LinkedList<>();
        Stack<VertexInterface<T>> todo = new Stack<>();
        todo.add(this.getVertex(origin));
        while(!todo.isEmpty())
        {
            VertexInterface<T> next = todo.pop();
            if(!next.isVisited())
            {
                ordered.add(next);
                next.visit();
                Iterator<VertexInterface<T>> iterator = next.getNeighborIterator();
                while(iterator.hasNext())
                {
                    todo.push(iterator.next());
                }
            }
        }
        return ordered;
    }
}
