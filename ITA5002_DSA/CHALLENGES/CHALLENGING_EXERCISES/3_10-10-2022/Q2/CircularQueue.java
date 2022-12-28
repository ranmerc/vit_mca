package Q2;

public class CircularQueue {
    public Node front;
    public Node rear;
    public int size;
    public int length;

    public CircularQueue(int size) {
        front = null;
        rear = null;
        this.size = size;
        length = 0;
    }

    public int size() {
        return length;
    }

    public boolean isFull() {
        return length + 1 > size;
    }

    public boolean isEmpty() {
        return front == null && rear == null && length == 0;
    }

    public boolean enqueue(int value) {
        if (isFull()) {
            return false;
        }

        Node newNode = new Node(value);

        if (isEmpty()) {
            front = newNode;
            rear = newNode;
            newNode.next = front;
            length++;
            return true;
        }

        newNode.next = front;
        rear.next = newNode;
        rear = newNode;
        length++;
        return true;
    }

    public Integer dequeue() {
        if (isEmpty()) {
            return null;
        }

        int toReturn = front.value;

        if (front == rear) {
            front = null;
            rear = null;
            length = 0;
            return toReturn;
        }

        front = front.next;
        length--;
        return toReturn;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();

        Node itr = front;

        if (isEmpty()) {
            return null;
        }

        for (int i = 0; i < length; i++, itr = itr.next) {
            sb.append(itr.value + " ");
        }

        return sb.toString();
    }
}
