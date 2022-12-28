package Q1;

import Stack.Stack;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Stack regNoStack = new Stack();

        Scanner scan = new Scanner(System.in);

        while (true) {
            System.out.println("");
            System.out.println("Menu");
            System.out.println("1. Add student registration number");
            System.out.println("2. Display registration number of first ten students");
            System.out.print("Choice : ");
            int choice = Integer.valueOf(scan.nextLine());

            if (choice == 1) {
                System.out.print("Enter registration number : ");
                String regNo = scan.nextLine();

                regNoStack.push(regNo);
            } else {
                System.out.println("Registration number of top ten students are :");

                while (regNoStack.size() > 10) {
                    regNoStack.pop();
                }

                while (regNoStack.size() > 0) {
                    System.out.println(regNoStack.pop());
                }

                break;
            }
        }
    }
}
