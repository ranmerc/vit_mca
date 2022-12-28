package Q2;

public class Stack {
    private char[] arr;
    private int size;
    private int lastFreeIndex;

    public Stack(int n) {
        size = n;
        arr = new char[size];
        lastFreeIndex = 0;
    }

    public boolean isEmpty() {
        return lastFreeIndex <= 0;
    }

    public boolean isFull() {
        return lastFreeIndex >= size;
    }

    public boolean push(char value) {
        if (isFull()) {
            return false;
        }

        arr[lastFreeIndex] = value;
        lastFreeIndex++;
        return true;
    }

    public Character pop() {
        if (isEmpty()) {
            return null;
        }

        return arr[--lastFreeIndex];
    }

    public Character peek() {
        if (isEmpty()) {
            return null;
        }
        return arr[lastFreeIndex - 1];
    }

    public void print() {
        for (int i = 0; i < lastFreeIndex; i++) {
            System.out.println(arr[i]);
        }
    }
}
