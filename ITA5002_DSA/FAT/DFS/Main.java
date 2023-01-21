import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        Graph graph = new Graph(7);

        graph.addEdge('A', 'B');
        graph.addEdge('A', 'D');
        graph.addEdge('A', 'E');
        graph.addEdge('D', 'E');
        graph.addEdge('B', 'E');
        graph.addEdge('B', 'C');
        graph.addEdge('E', 'C');
        graph.addEdge('E', 'F');
        graph.addEdge('C', 'G');
        graph.addEdge('F', 'C');
        graph.addEdge('F', 'G');

        ArrayList<Character> path = graph.depthFirstSearch('A');
        System.out.println("Depth First Search on the given graph is: ");

        for (int i = 0; i < path.size(); i++) {
            System.out.print(path.get(i));
            if (i != path.size() - 1) {
                System.out.print(" -> ");
            }
        }
    }
}
