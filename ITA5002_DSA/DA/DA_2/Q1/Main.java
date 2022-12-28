import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.print("Enter array size: ");
        int arraySize = Integer.valueOf(scan.nextLine());

        int[] array = new int[arraySize];
        CountList cl = new CountList(arraySize);

        for (int i = 0; i < arraySize; i++) {
            System.out.println("Enter value of " + (i + 1) + " element: ");
            array[i] = Integer.valueOf(scan.nextLine());
            cl.incrementCount(array[i]);
        }

        int[] negativeOutputArray = new int[arraySize];
        int negativeOutputArrayLength = 0;

        int[] positiveOutputArray = new int[arraySize];
        int positiveOutputArrayLength = 0;

        for (int i = 0; i < arraySize; i++) {
            if (array[i] < 0) {
                negativeOutputArray[negativeOutputArrayLength++] = array[i];
            } else {
                positiveOutputArray[positiveOutputArrayLength++] = array[i];
            }
        }

        System.out.println("\nPositive numbers array before sorting:");
        printArray(positiveOutputArray, positiveOutputArrayLength);
        System.out.println("\nNegative numbers array before sorting:");
        printArray(negativeOutputArray, negativeOutputArrayLength);

        System.out.println("");

        int numberOfComparisons;

        System.out.println("\nPositive numbers array after sorting:");
        numberOfComparisons = insertionSortAsc(positiveOutputArray, positiveOutputArrayLength);
        printArray(positiveOutputArray, positiveOutputArrayLength);
        System.out.println("\nNumber of Comparisons made during sorting : " + numberOfComparisons);

        System.out.println("\nNegative numbers array after sorting:");
        numberOfComparisons = insertionSortDesc(negativeOutputArray, negativeOutputArrayLength);
        printArray(negativeOutputArray, negativeOutputArrayLength);
        System.out.println("\nNumber of Comparisons made during sorting : " + numberOfComparisons);

        System.out.println("");
        System.out.println("Duplicate Values:");
        System.out.println(cl);
    }

    public static int insertionSortAsc(int[] arr, int n) {
        int numberOfComparisons = 0;

        for (int i = 1; i < n; i++) {
            int key = arr[i];
            int j = i - 1;

            while (j >= 0 && arr[j] > key) {
                numberOfComparisons++;
                arr[j + 1] = arr[j];
                j = j - 1;
            }

            arr[j + 1] = key;
        }

        return numberOfComparisons + 1;
    }

    public static int insertionSortDesc(int[] arr, int n) {
        int numberOfComparisons = 0;

        for (int i = 1; i < n; i++) {
            int key = arr[i];
            int j = i - 1;

            while (j >= 0 && arr[j] < key) {
                numberOfComparisons++;
                arr[j + 1] = arr[j];
                j = j - 1;
            }

            arr[j + 1] = key;
        }

        return numberOfComparisons + 1;
    }

    public static void printArray(int arr[], int length) {
        for (int i = 0; i < length; i++) {
            System.out.print(arr[i] + " ");
        }
    }
}
