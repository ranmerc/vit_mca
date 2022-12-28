package Q2;

public class LinkedList {
    public Node head;
    private int size;
    private int length;

    public LinkedList(int size) {
        head = null;
        this.length = 0;
        this.size = size;
    }

    public boolean isEmpty() {
        return head == null;
    }

    public boolean insertAtEnd(int value) {
        Node newNode = new Node(value);

        if (length + 1 > size) {
            return false;
        }

        if (isEmpty()) {
            head = newNode;
            length++;
            return true;
        }

        Node itr = head;

        while (itr.next != null) {
            itr = itr.next;
        }

        itr.next = newNode;
        length++;
        return true;
    }

    @Override
    public String toString() {
        if (isEmpty()) {
            return null;
        }

        StringBuilder sb = new StringBuilder();

        Node itr = head;

        while (itr != null) {
            sb.append(itr.value + " ");
            itr = itr.next;
        }

        return sb.toString();
    }
}
