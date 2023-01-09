import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        
        int vertex;

        System.out.println("Enter number of vertices: ");
        vertex = Integer.valueOf(scan.nextLine());

        int to, from;

        int adjacencyMatrix[][] = new int[vertex][vertex];

        for (int i = 0; i < vertex; i++) {
            for (int j = 0; j <= i; j++) {
                System.out.println("Enter weight of edge between " + ((char) (65 + i)) + " to " + ((char) (65 + j)));
                adjacencyMatrix[i][j] = Integer.valueOf(scan.nextLine());
                adjacencyMatrix[j][i] = adjacencyMatrix[i][j];
            }
        }

        System.out.println("Adjacency Matrix: ");
        System.out.print("  ");
        for (int i = 0; i < vertex; i++) {
            System.out.print(((char) (65 + i)) + "\t");
        }
        for (int i = 0; i < vertex; i++) {
            System.out.println("");
            System.out.print(((char) (65 + i)) + " ");
            for (int j = 0; j < vertex; j++) {
                System.out.print(adjacencyMatrix[i][j] + "\t");
            }
        }

        
    }
}
