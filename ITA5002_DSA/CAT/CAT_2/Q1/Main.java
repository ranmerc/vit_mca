import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int noOfRows, noOfColumns;
        System.out.print("Enter row size: ");
        noOfRows = Integer.valueOf(scan.nextLine());
        System.out.print("Enter column size: ");
        noOfColumns = Integer.valueOf(scan.nextLine());
        int A[][] = new int[noOfRows][noOfColumns];
        System.out.println("Enter Elements: ");
        for (int i = 0; i < noOfRows; i++) {
            for (int j = 0; j < noOfColumns; j++) {
                System.out.print("Enter A[" + i + "][" + j + "]: ");
                A[i][j] = Integer.valueOf(scan.nextLine());
            }
        }
        System.out.println("Matrix is: ");
        for (int i = 0; i < noOfRows; i++) {
            for (int j = 0; j < noOfColumns; j++) {
                System.out.print(A[i][j] + " ");
            }
            System.out.println("");
        }
        int flatArrayLength = noOfColumns * noOfRows;
        int flatArray[] = new int[flatArrayLength];

        // Converting to 1D array
        for (int i = 0, k = 0; i < noOfRows && k < flatArrayLength; i++) {
            for (int j = 0; j < noOfRows; j++) {
                flatArray[k++] = A[i][j];
            }
        }
        // Sort 1D array
        insertionSort(flatArray, flatArrayLength);
        // Convert back to 2D Array
        for (int i = 0, k = 0; i < noOfRows && k < flatArrayLength; i++) {
            for (int j = 0; j < noOfRows; j++) {
                A[i][j] = flatArray[k++];
            }
        }
        System.out.println("After sorting Matrix is: ");
        for (int i = 0; i < noOfRows; i++) {
            for (int j = 0; j < noOfColumns; j++) {
                System.out.print(A[i][j] + " ");
            }
            System.out.println("");
        }
    }

    public static void insertionSort(int array[], int length) {
        for (int i = 1; i < length; i++) {
            int j = i - 1;
            int key = array[i];
            while (j >= 0 && array[j] > key) {
                array[j + 1] = array[j];
                j--;
            }
            array[j + 1] = key;
        }
    }
}
