public class Queue {
    public Node front;
    public Node rear;
    private int size;

    public Queue() {
        front = null;
        rear = null;
        size = 0;
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
        return true;
    }

    public Integer dequeue() {
        if (front == null && rear == null) {
            System.out.println("Queue Emtpy");
            return null;
        }

        if (front == rear) {
            int valueToReturn = front.value;
            front = null;
            rear = null;
            size = 0;
            return valueToReturn;
        }

        int dequeuedValue = front.value;
        front = front.next;
        size--;
        return dequeuedValue;
    }

    public void print() {
        Node itr = front;

        System.out.println("");
        
        if (itr == null) {
            System.out.println("Queue Empty");
        }

        while (itr != null) {
            System.out.print(itr.value + " ");
            itr = itr.next;
        }
    }
}
