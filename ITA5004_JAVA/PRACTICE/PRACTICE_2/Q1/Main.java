package Q1;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Circle defaultCircle = new Circle();
        
        System.out.println("Enter radius of the circle: ");
        double radius = scanner.nextDouble();
        
        Circle customCircle = new Circle(radius);
        
        System.out.println("The area of circle having radius " + defaultCircle.getRadius() + " is " + defaultCircle.findArea());
        System.out.println("The area of circle having radius " + customCircle.getRadius() + " is " + customCircle.findArea());
    }
}
