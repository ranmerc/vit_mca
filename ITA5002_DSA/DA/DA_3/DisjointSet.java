public class DisjointSet {
    private int parentArray[];
    private int numberOfElements;

    DisjointSet(int numberOfElements) {
        this.numberOfElements = numberOfElements;
        parentArray = new int[numberOfElements];

        for (int i = 0; i < numberOfElements; i++) {
            parentArray[i] = i;
        }
    }

    int parent(int e) {
        while (parentArray[e] != e) {
            e = parentArray[e];
        }

        return e;
    }

    void union(int e1, int e2) {
        int parente1 = parent(e1);
        int parente2 = parent(e2);

        if (parente1 < parente2) {
            parentArray[parente2] = parente1;
        } else {
            parentArray[parente1] = parente2;
        }
    }
}
