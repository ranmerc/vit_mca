package Q1_Circular;

public class CircularLinkedList<T> {
    public Node<T> head;
    public int size;

    public CircularLinkedList() {
        head = null;
        size = 0;
    }

    public int size() {
        return size;
    }

    public void insertAtEnd(T value) {
        Node<T> newNode = new Node<T>(value);

        if (head == null) {
            head = newNode;
            head.next = newNode;
        } else {
            Node<T> itr = head;

            do {
                itr = itr.next;
            } while (itr.next != head);

            itr.next = newNode;
            newNode.next = head;
        }

        size++;
    }

    public boolean remove(Node<T> node) {
        Node<T> itr = head;

        // Queue is Empty
        if (itr == null) {
            return false;
        }

        // Only one element
        if (itr == node && size == 1) {
            head = null;
            size = 0;
            return true;
        }

        // Remove head node
        if (itr == node) {
            Node<T> nextToHead = itr.next;
            while (itr.next != head) {
                itr = itr.next;
            }
            head = nextToHead;
            itr.next = head;
            size--;
            return true;
        }

        // Remove any other than head
        while (itr.next != node && itr.next != head) {
            itr = itr.next;
        }

        if (itr.next == node) {
            itr.next = node.next;
            size--;
            return true;
        }

        return false;
    }

    public void print() {
        Node<T> itr = head;

        if (head == null) {
            System.out.println("Empty");
            return;
        }

        System.out.println("");
        do {
            System.out.print(itr.value + " ");
            itr = itr.next;
        } while (itr != head);
    }
}
