public class Queue {
    public Node front;
    public Node rear;
    private int size;

    public Queue() {
        front = null;
        rear = null;
        size = 0;
    }

    public boolean isEmpty() {
        return front == null && rear == null;
    }

    public int size() {
        return size;
    }

    public int front() {
        return front.value;
    }

    public boolean enqueue(int x) {
        Node newNode = new Node(x);

        if (front == null && rear == null) {
            front = newNode;
            rear = newNode;
            size++;
            return true;
        }

        rear.next = newNode;
        rear = newNode;
        size++;

        System.out.println("Enqueued " + (char) (x + 65) + " to the queue");
        return true;
    }

    public Integer dequeue() {
        if (isEmpty()) {
            System.out.println("Queue Empty");
            return null;
        }

        if (front == rear) {
            int valueToReturn = front.value;
            front = null;
            rear = null;
            size = 0;
            System.out.println("Dequeued " + (char) (valueToReturn + 65) + " from the queue");
            return valueToReturn;
        }

        int dequeuedValue = front.value;
        front = front.next;
        size--;
        System.out.println("Dequeued " + (char) (dequeuedValue + 65) + " from the queue");
        return dequeuedValue;
    }

    public void print() {
        Node itr = front;

        if (itr == null) {
            System.out.println("Queue Empty");
        }

        while (itr != null) {
            System.out.print((char) (itr.value + 65) + " ");
            itr = itr.next;
        }

        System.out.println("\n");
    }
}
