import java.util.ArrayDeque;
import java.util.ArrayList;

public class Graph {
    private int numberOfVertices;
    private ArrayList<ArrayList<Integer>> adjacencyList;

    public Graph(int numberOfVertices) {
        this.numberOfVertices = numberOfVertices;
        this.adjacencyList = new ArrayList<>();

        for (int i = 0; i < numberOfVertices; i++) {
            adjacencyList.add(new ArrayList<>());
        }
    }

    public void addEdge(int from, int to) {
        adjacencyList.get(from).add(to);
    }

    public void breadthFirstSearch(int startVertex) {
        ArrayDeque<Integer> queue = new ArrayDeque<>();
        boolean visited[] = new boolean[numberOfVertices];

        queue.addLast(startVertex);
        visited[startVertex] = true;

        while (!queue.isEmpty()) {
            int currentVertex = queue.pollFirst();
            System.out.println(currentVertex);

            ArrayList<Integer> currentList = adjacencyList.get(currentVertex);
            for (int i = 0; i < currentList.size(); i++) {
                if (!visited[currentList.get(i)]) {
                    visited[currentList.get(i)] = true;
                    queue.addFirst(currentList.get(i));
                }
            }
        }
    }

    public void depthFirstSearch(int startVertex) {
        ArrayDeque<Integer> stack = new ArrayDeque<>();
        boolean visited[] = new boolean[numberOfVertices];
        visited[startVertex] = true;
        stack.addLast(startVertex);

        while (!stack.isEmpty()) {
            int currentVertex = stack.pollLast();
            System.out.println(currentVertex);

            ArrayList<Integer> currentList = adjacencyList.get(currentVertex);
            for (int i = 0; i < currentList.size(); i++) {
                if (!visited[currentList.get(i)]) {
                    visited[currentList.get(i)] = true;
                    stack.addLast(currentList.get(i));
                }
            }
        }
    }
}
