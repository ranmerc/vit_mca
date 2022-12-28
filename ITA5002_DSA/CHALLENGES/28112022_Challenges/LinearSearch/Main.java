package LinearSearch;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int arr[] = new int[10];
        int noOfComparisons = 0;
        int keyToSearch;
        int atIndex = -1;
        
        for (int i = 0; i < 10; i++) {
            arr[i] = (int) (50 + (Math.random() * 51));
        }

        System.out.println("Array is: ");
        for(int i = 0; i < 10; i++) {
            System.out.print(arr[i] + " ");
        }
        System.out.println("");

        System.out.print("Enter key to search for: ");
        keyToSearch = Integer.valueOf(scan.nextLine());

        for (int i = 0; i < 10; i++) {
            noOfComparisons++;
            if (arr[i] == keyToSearch) {
                atIndex = i;
                break;
            }
        }

        if (atIndex == -1) {
            System.out.println("Element not found");
            System.out.println("Number of comparisons made: " + noOfComparisons);
        } else {
            System.out.println("Element found at index: " + atIndex);
            System.out.println("Number of comparisons made: " + noOfComparisons);
        }
    }
}