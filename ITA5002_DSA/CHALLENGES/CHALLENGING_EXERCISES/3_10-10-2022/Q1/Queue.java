package Q1;

public class Queue {
    private int[] arr;
    private int size;
    private int front;
    private int rear;
    private int length;

    Queue(int size) {
        this.size = size;
        arr = new int[this.size];
        front = -1;
        rear = -1;
        length = 0;
    }

    public int size() {
        return length;
    }

    public boolean enqueue(int value) {
        if (rear + 1 >= size) {
            return false;
        }

        if (front == -1 && rear == -1) {
            front = rear = 0;
            arr[front] = value;
            length++;
            return true;
        }
        arr[++rear] = value;
        length++;
        return true;
    }

    public Integer dequeue() {
        if (front == -1) {
            return null;
        }

        int toReturn = arr[front];

        if (front == rear) {
            front = rear = -1;
            length--;
            return toReturn;
        }

        front++;
        length--;
        return toReturn;
    }

    public void print() {
        System.out.println("");

        if (front == -1) {
            return;
        }
        for (int i = front; i <= rear; i++) {
            System.out.print(arr[i] + " ");
        }
    }
}
