public class Stack {
    public int[] arr;
    public int size;
    private int lastFreeIndex;

    Stack() {
        size = 50;
        arr = new int[size];
        lastFreeIndex = 0;
    }

    public boolean isEmpty() {
        return lastFreeIndex == 0;
    }

    public void push(int value) {
        if (lastFreeIndex >= size - 1) {
            System.out.println("Overlfow");
            return;
        }

        arr[lastFreeIndex++] = value;
    }

    public Integer pop() {
        if (lastFreeIndex <= 0) {
            System.out.println("Underflow");
            return null; 
        }

        return arr[--lastFreeIndex];
    }

    public void print() {
        if (lastFreeIndex == 0) {
            System.out.println("Empty");
            return;
        }

        for (int i = 0; i < lastFreeIndex; i++) {
            System.out.println(arr[i] + " ");
        }
    }
}
