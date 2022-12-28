package Lab_Assessment_1.Q3;

import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Polynomial p1 = new Polynomial();
        Polynomial p2 = new Polynomial();

        System.out.println("Enter degree of first polynomial : ");
        inputPolynomial(p1);

        System.out.println("Enter degree of second polynomial : ");
        inputPolynomial(p2);

        Polynomial summedPolynomial = addPolynomial(p1, p2);

        System.out.println("First Polynomial: ");
        p1.print();

        System.out.println("Second Polynomial: ");
        p2.print();

        System.out.println("Summed Polynomial: ");
        summedPolynomial.print();
    }

    public static void inputPolynomial(Polynomial poly) {
        Scanner scan = new Scanner(System.in);
        int deg = scan.nextInt();

        for (int i = deg; i >= 0; i--) {
            System.out.println("Enter coefficient of x^" + i + " : ");
            int coeff = scan.nextInt();
            poly.insertTerm(coeff, i);
        }
    }

    public static Polynomial addPolynomial(Polynomial p1, Polynomial p2) {
        Polynomial summedPolynomial = new Polynomial();

        while (p1.hasNextTerm() && p2.hasNextTerm()) {
            if (p1.currentTerm().power > p2.currentTerm().power) {
                Term termToInsert = p1.nextTerm();
                summedPolynomial.insertTerm(termToInsert);
            } else if (p1.currentTerm().power < p2.currentTerm().power) {
                Term termToInsert = p2.nextTerm();
                summedPolynomial.insertTerm(termToInsert);
            } else {
                Term p1Term = p1.nextTerm();
                Term p2Term = p2.nextTerm();
                Term termToInsert = new Term(p1Term.coeff + p2Term.coeff, p1Term.power);
                summedPolynomial.insertTerm(termToInsert);
            }
        }

        while (p1.hasNextTerm()) {
            Term termToInsert = p1.nextTerm();
            summedPolynomial.insertTerm(termToInsert);
        }

        while (p2.hasNextTerm()) {
            Term termToInsert = p2.nextTerm();
            summedPolynomial.insertTerm(termToInsert);
        }

        return summedPolynomial;
    }
}