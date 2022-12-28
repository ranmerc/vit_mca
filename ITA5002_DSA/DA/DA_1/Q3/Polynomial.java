package Lab_Assessment_1.Q3;

public class Polynomial {
    private Term head, itr;

    public Polynomial() {
        head = null;
        itr = null;
    }

    public boolean isEmpty() {
        return head == null;
    }

    public void insertTerm(Term term) {
        this.insertTerm(term.coeff, term.power);
    }

    public void insertTerm(int coeff, int power) {
        Term newTerm = new Term(coeff, power);

        if (head == null) {
            head = newTerm;
            itr = head;
        } else {
            Term itr = head;
            while (itr.next != null) {
                itr = itr.next;
            }

            itr.next = newTerm;
        }
    }

    public void print() {
        Term itr = head;
        while (itr != null) {
            System.out.print(itr.coeff + "x^" + itr.power + " ");
            itr = itr.next;
        }
        System.out.println("");
    }

    public Term currentTerm() {
        return itr;
    }

    public Term nextTerm() {
        if (head == null) {
            return null;
        }

        Term toReturn = itr;
        itr = itr.next;
        return toReturn;
    }

    public boolean hasNextTerm() {
        if (head == null) {
            return false;
        }

        if (itr == null) {
            return false;
        }

        return true;
    }
}
