import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        int totalVertices;
        int totalCost;

        System.out.println("Enter number of vertices: ");
        totalVertices = Integer.valueOf(scan.nextLine());
        Graph graph = new Graph(totalVertices);

        for (int i = 0; i < totalVertices; i++) {
            for (int j = 0; j <= i; j++) {
                System.out.println("Enter weight of edge between " + ((char) (65 + i)) + " to " + ((char) (65 + j)));
                int weight = Integer.valueOf(scan.nextLine());
                graph.addEdge(i, j, weight);
                graph.addEdge(j, i, weight);
            }
        }

        graph.printGraph();

        System.out.println("");
        System.out.println("Enter minimum spanning tree total cost: ");
        totalCost = Integer.valueOf(scan.nextLine());
        System.out.println("Enter node to ignore: ");
        int nodeToIgnore = scan.nextLine().charAt(0) - 'A';

        int costWithoutNode = graph.mstCost(nodeToIgnore);
        System.out.println(
                "Minimum spanning tree cost without node " + ((char) (nodeToIgnore + 65)) + " -> " + costWithoutNode);
        System.out.println("Weight of missing edge -> " + totalCost + " - " + costWithoutNode + " = "
                + (totalCost - costWithoutNode));
    }
}
