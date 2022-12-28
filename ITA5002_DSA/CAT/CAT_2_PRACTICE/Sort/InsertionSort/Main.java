package InsertionSort;

public class Main {
    public static void main(String[] args) {
        int array[] = { 55, 66, 22, 11, 44, 77 };
        int length = array.length;

        insertionSort(array, length);

        for (int i = 0; i < length; i++) {
            System.out.println(array[i]);
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