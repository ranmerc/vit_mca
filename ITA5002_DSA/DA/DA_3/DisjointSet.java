import java.util.ArrayList;
import java.util.HashMap;

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

    void print() {
        HashMap<Integer, ArrayList<Integer>> sets = new HashMap<>();

        for (int i = 0; i < numberOfElements; i++) {
            int parentElement = parent(i);

            if (sets.containsKey(parentElement)) {
                sets.get(parentElement).add(i);
            } else {
                ArrayList<Integer> list = new ArrayList<>();
                list.add(i);
                sets.put(parentElement, list);
            }
        }

        System.out.println(sets);
    }
}
