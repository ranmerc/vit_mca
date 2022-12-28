import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.println("Enter array size:");
        int arraySize = Integer.valueOf(scan.nextLine());

        int[] array = new int[arraySize];

        System.out.println("Enter array (in ascending order):");
        for (int i = 0; i < arraySize; i++) {
            System.out.println("Enter value of " + (i + 1) + " element: ");
            array[i] = Integer.valueOf(scan.nextLine());
        }

        System.out.println("Array: ");
        for (int i = 0; i < arraySize; i++) {
            System.out.print(array[i] + " ");
        }

        System.out.println("");
        System.out.println("Enter value to search for:");
        int value = Integer.valueOf(scan.nextLine());

        int position = binSearch(array, value, 0, arraySize - 1);

        System.out.println("");
        if (position == -1) {
            System.out.println("Element not found");
        } else {
            System.out.println("Element is present at position " + position);
        }
    }

    public static int binSearch(int[] arr, int value, int min, int max) {
        int mid = (min + max) / 2;

        if (min > max) {
            return -1;
        }

        System.out.println("");
        System.out.println("Searching for element in sub array:");
        for (int i = min; i <= max; i++) {
            System.out.print(arr[i] + " ");
        }

        if (arr[mid] == value) {
            return mid - min + 1;
        } else if (arr[mid] > value) {
            return binSearch(arr, value, min, mid);
        } else {
            return binSearch(arr, value, mid + 1, max);
        }
    }
}
