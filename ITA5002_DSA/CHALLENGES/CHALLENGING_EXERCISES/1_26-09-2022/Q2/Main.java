package Q2;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        BrowserURLStack bStack = new BrowserURLStack();

        while (true) {
            System.out.println("");
            System.out.println("Choose Option:");
            System.out.println("1. Visit New Link");
            System.out.println("2. Go Back");
            System.out.println("3. Go Forward");
            System.out.println("4. Display Stacks");
            System.out.println("5. Exit");
            System.out.print("Choice: ");

            int choice = Integer.valueOf(scan.nextLine());

            switch (choice) {
                case 1:
                    bStack.addLink();
                    break;
                case 2:
                    bStack.goBack();
                    break;
                case 3:
                    bStack.goForward();
                    break;
                case 4:
                    System.out.println("");
                    System.out.println("Current Browser Stack: ");
                    bStack.print();
                    break;
                case 5:
                    return;
            }
        }
    }
}
