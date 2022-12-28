import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        char VIT[] = { 'B', 'Z', 'A', 'X', 'R', 'O', 'L', 'E', 'D', 'M' };
        while (true) {
            System.out.println("Enter value to search for(0 to exit): ");
            char value = scan.nextLine().charAt(0);
            if (value == '0') {
                return;
            }
            int index = linearSearch(VIT, VIT.length, value);
            if (index == -1) {
                System.out.println(value + " not present in array");
            } else {
                System.out.println(value + " present in array at position " +
                        (index + 1));
            }
        }
    }

    public static int linearSearch(char array[], int length, int value) {
        for (int i = 0; i < length; i++) {
            if (array[i] == value) {
                return i;
            }
        }
        return -1;
    }
}