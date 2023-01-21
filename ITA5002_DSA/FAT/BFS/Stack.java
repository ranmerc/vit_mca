public class Stack {
    private int size;
    private int lastFreeIndex;
    private int[] array;

    Stack(int numberOfElements) {
        array = new int[numberOfElements];
        size = numberOfElements;
        lastFreeIndex = 0;
    }

    public boolean isEmpty() {
        return lastFreeIndex == 0;
    }

    public boolean isFull() {
        return lastFreeIndex >= size;
    }

    public int size() {
        return lastFreeIndex + 1;
    }

    public int peek() {
        return array[lastFreeIndex - 1];
    }

    public boolean push(int element) {
        if (isFull()) {
            System.out.println("Stack Overflow");
            return false;
        }

        System.out.println("Pushed " + element + " into the stack");
        array[lastFreeIndex++] = element;
        return true;
    }

    public Integer dequeue() {
        if (isEmpty()) {
            System.out.println("Stack Underflow");
            return null;
        }

        int element = array[lastFreeIndex--];
        System.out.println("Popped " + element + " from the stack");
        return element;
    }
}
