package Q1;

public class LinkedList<T> {
    public Node<T> head;
    protected int size;

    public LinkedList() {
        head = null;
    }

    public int size() {
        return size;
    }

    public void addLast(T value) {
        Node<T> newNode = new Node<T>(value);

        if (head == null) {
            head = newNode;
        } else {
            Node<T> itr = head;

            while (itr.next != null) {
                itr = itr.next;
            }

            itr.next = newNode;
        }

        size++;
    }

    public boolean remove(int i) {
        if (size == 0) {
            return false;
        }

        if (i == 0) {
            if (head.next == null) {
                head = null;
            } else {
                head = head.next;
            }
            size--;
            return true;
        }

        Node<T> itr = head;

        int j = 0;
        while (j < i - 1) {
            itr = itr.next;
            j++;
        }

        itr.next = itr.next.next;
        size--;
        return true;
    }

    public boolean remove(T value) {
        if (size == 0) {
            return false;
        }

        Node<T> itr = head;
        Node<T> prevItr = null;

        while (itr != null) {
            if (itr.value == value) {
                if (itr == head) {
                    head = null;
                    size--;
                    return true;
                }
                prevItr.next = itr.next;
                size--;
                return true;
            }

            prevItr = itr;
            itr = itr.next;
        }

        return false;
    }

    public T get(int i) {
        if (i >= size) {
            return null;
        }

        Node<T> itr = head;
        int j = 0;
        while (j < i) {
            itr = itr.next;
            j++;
        }

        return itr.value;
    }

    public void print() {
        Node<T> itr = head;

        if (head == null) {
            System.out.println("Empty");
        }

        System.out.println("");
        while (itr != null) {
            System.out.print(itr.value + " ");
            itr = itr.next;
        }
    }
}
