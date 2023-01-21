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

    public ArrayList<Character> depthFirstSearch(char startVertex) {
        int startVertexIdx = (int) (startVertex - 65);

        ArrayList<Character> path = new ArrayList<>();

        Stack stack = new Stack(numberOfVertices);

        boolean visited[] = new boolean[numberOfVertices];

        stack.push(startVertexIdx);
        visited[startVertexIdx] = true;

        while (!stack.isEmpty()) {
            int currentVertex = stack.pop();
            System.out.println("\nStack operations on visiting " + (char) (currentVertex + 65) + " - ");
            path.add((char) (currentVertex + 65));

            ArrayList<Integer> currentList = adjacencyList.get(currentVertex);
            for (int i = 0; i < currentList.size(); i++) {
                if (!visited[currentList.get(i)]) {
                    visited[currentList.get(i)] = true;
                    stack.push(currentList.get(i));
                }
            }

            System.out.println("Stack after visiting " + (char) (currentVertex + 65) + " - ");
            stack.print();
        }
        return path;
    }

}
