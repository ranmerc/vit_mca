package Stack;

public class Stack {
    private String[] arr;
    private int size;
    private int lastFreeIndex;

    public Stack() {
        this.arr = new String[50];
        this.size = 50;
        this.lastFreeIndex = 0;
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public int size() {
        return lastFreeIndex;
    }

    public boolean push(String value) {
        if (lastFreeIndex >= size) {
            return false;
        }

        arr[lastFreeIndex] = value;
        lastFreeIndex++;
        return true;
    }

    public String pop() {
        if (lastFreeIndex == 0) {
            return null;
        }

        lastFreeIndex--;
        return arr[lastFreeIndex];
    }

    @Override
    public String toString() {
        if (lastFreeIndex == 0) {
            return "[]";
        }

        StringBuilder stringRepresentation = new StringBuilder();

        stringRepresentation.append("[");

        for (int i = 0; i < lastFreeIndex; i++) {
            stringRepresentation.append(arr[i]);

            if (i + 1 != lastFreeIndex) {
                stringRepresentation.append(",");
            }
        }

        stringRepresentation.append("]");

        return stringRepresentation.toString();
    }

    public void print() {
        for (int i = 0; i < lastFreeIndex; i++) {
            System.out.println(arr[i]);
        }
    }
}
