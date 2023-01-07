import java.util.ArrayList;
import java.util.Collections;

class DataSet {
    private ArrayList<Integer> data;

    public DataSet() {
        data = new ArrayList<>();
    }

    public void insertData(int d) {
        data.add(d);
        Collections.sort(data);
    }

    public int getMedian() {
        int size = data.size();

        if (size % 2 == 0) {
            return data.get(size / 2) + data.get((size / 2) - 1);
        } else {
            return data.get(size / 2);
        }
    }
}