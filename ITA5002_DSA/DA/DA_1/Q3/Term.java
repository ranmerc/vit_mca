package Lab_Assessment_1.Q3;

public class Term {
    public int coeff, power;
    public Term next;

    Term(int coeff, int power) {
        this.coeff = coeff;
        this.power = power;
        this.next = null;
    }
}
