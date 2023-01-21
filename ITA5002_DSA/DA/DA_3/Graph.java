import java.util.ArrayList;

public class Graph {
    private int adjacencyMatrix[][];
    public int totalVertices;

    Graph(int totalVertices) {
        this.totalVertices = totalVertices;
        adjacencyMatrix = new int[totalVertices][totalVertices];
    }

    void addEdge(int from, int to, int weight) {
        adjacencyMatrix[from][to] = weight;
    }

    void printGraph() {
        System.out.println("Adjacency Matrix: ");
        System.out.print("  ");
        for (int i = 0; i < totalVertices; i++) {
            System.out.print(((char) (65 + i)) + "\t");
        }
        for (int i = 0; i < totalVertices; i++) {
            System.out.println("");
            System.out.print(((char) (65 + i)) + " ");
            for (int j = 0; j < totalVertices; j++) {
                System.out.print(adjacencyMatrix[i][j] + "\t");
            }
        }
    }

    int mstCost(int toExclude) {
        ArrayList<ArrayList<Integer>> edgeList = new ArrayList<>();
        DisjointSet componentSet = new DisjointSet(totalVertices);

        for (int i = 0; i < totalVertices; i++) {
            for (int j = i + 1; j < totalVertices; j++) {
                if (adjacencyMatrix[i][j] == 0 || i == toExclude || j == toExclude) {
                    continue;
                }
                ArrayList<Integer> triple = new ArrayList<>();
                triple.add(adjacencyMatrix[i][j]);
                triple.add(i);
                triple.add(j);
                edgeList.add(triple);
            }
        }

        for (int i = 0; i < edgeList.size(); i++) {
            ArrayList<Integer> smallest = edgeList.get(i);
            int smallestIdx = i;
            for (int j = i + 1; j < edgeList.size(); j++) {
                if (edgeList.get(j).get(0) < smallest.get(0)) {
                    smallest = edgeList.get(j);
                    smallestIdx = j;
                }
            }
            edgeList.set(smallestIdx, edgeList.get(i));
            edgeList.set(i, smallest);
        }

        int cost = 0;
        for (int i = 0; i < edgeList.size(); i++) {
            if (componentSet.parent(edgeList.get(i).get(1)) == componentSet.parent(edgeList.get(i).get(2))) {
                continue;
            }

            componentSet.union(edgeList.get(i).get(1), edgeList.get(i).get(2));
            componentSet.print();
            cost += edgeList.get(i).get(0);
        }

        return cost;
    }
}
