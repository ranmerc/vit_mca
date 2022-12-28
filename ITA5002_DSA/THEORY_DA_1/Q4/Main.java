import java.util.ArrayDeque;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        ArrayDeque<Integer> stack = new ArrayDeque<>();
        Scanner scan = new Scanner(System.in);
        System.out.println("Enter number: ");
        int number = Integer.valueOf(scan.nextLine());

        while (number > 0) {
            stack.addFirst(number % 2);
            number = number / 2;
        }

        System.out.println("Equivalent Binary: ");
        while (!stack.isEmpty()) {
            System.out.print(stack.removeFirst());
        }
    }
}