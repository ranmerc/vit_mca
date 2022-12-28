package Q1;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.println("Enter n (multiples of 3): ");
        int n = Integer.valueOf(scan.nextLine());
        if (n % 3 != 0) {
            System.out.println("n should be multiple of 3");
            return;
        }

        ThreeStacks stacks = new ThreeStacks(n);

        while (true) {
            System.out.println("");
            System.out.println("Menu:");
            System.out.println("1. Push to Stack");
            System.out.println("2. Pop from Stack");
            System.out.println("3. Print Stack");
            System.out.println("4. Exit");
            System.out.print("Choice: ");

            int choice = Integer.valueOf(scan.nextLine());

            switch (choice) {
                case 1: {
                    int i = getStackNumber(scan);
                    if (i == -1) {
                        break;
                    }
                    System.out.print("Value: ");
                    int val = Integer.valueOf(scan.nextLine());
                    stacks.push(i, val);
                }
                    break;
                case 2: {
                    int i = getStackNumber(scan);
                    if (i == -1) {
                        break;
                    }
                    Integer popped = stacks.pop(i);
                    if (popped != null) {
                        System.out.println("Popped Value: " + popped);
                    }
                }
                    break;
                case 3: {
                    int i = getStackNumber(scan);
                    if (i == -1) {
                        break;
                    }
                    stacks.print(i);
                }
                    break;
                case 4:
                    return;
            }
        }
    }

    public static int getStackNumber(Scanner scan) {
        System.out.print("Stack Number: ");
        int i = Integer.valueOf(scan.nextLine());

        if (i < 1 || i > 3) {
            System.out.println("Invalid Stack Number");
            return -1;
        }

        return i;
    }
}
