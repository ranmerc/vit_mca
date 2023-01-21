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

    public void addEdge(char from, char to) {
        int fromIdx = (int) (from - 65);
        int toIdx = (int) (to - 65);
        adjacencyList.get(fromIdx).add(toIdx);
        adjacencyList.get(toIdx).add(fromIdx);
    }

    public ArrayList<Character> breadthFirstSearch(char startVertex) {
        int startVertexIdx = (int) (startVertex - 65);

        ArrayList<Character> path = new ArrayList<>();

        Queue queue = new Queue();

        boolean visited[] = new boolean[numberOfVertices];

        queue.enqueue(startVertexIdx);
        visited[startVertexIdx] = true;

        while (!queue.isEmpty()) {
            int currentVertex = queue.dequeue();
            System.out.println("\nQueue operations on visiting " + (char) (currentVertex + 65) + " - ");
            path.add((char) (currentVertex + 65));

            ArrayList<Integer> currentList = adjacencyList.get(currentVertex);
            for (int i = 0; i < currentList.size(); i++) {
                if (!visited[currentList.get(i)]) {
                    visited[currentList.get(i)] = true;
                    queue.enqueue(currentList.get(i));
                }
            }

            System.out.println("Queue after visiting " + (char) (currentVertex + 65) + " - ");
            queue.print();
        }
        return path;
    }

}
