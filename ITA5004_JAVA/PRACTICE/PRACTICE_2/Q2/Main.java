package Q2;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double x1, y1, x2, y2;

        System.out.println("Enter line 1:");
        System.out.println("Enter first point:");
        System.out.println("Enter x:");
        x1 = scanner.nextDouble();
        System.out.println("Enter y:");
        y1 = scanner.nextDouble();

        System.out.println("Enter second point:");
        System.out.println("Enter x:");
        x2 = scanner.nextDouble();
        System.out.println("Enter y:");
        y2 = scanner.nextDouble();

        Line line = new Line(x1, y1, x2, y2);

        System.out.println("Length of the line is: " + line.getLengthOfLine());
    }
}
