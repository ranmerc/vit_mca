public class Main {
    public static void main(String[] args) {
        int arr[] = { 22, 21, 20, 14, 34, 12 };

        mergeSort(arr, arr.length);
        for (int i = 0; i < arr.length; i++) {
            System.out.println(arr[i]);
        }
    }

    public static void mergeSort(int[] a, int length) {
        if (length < 2) {
            return;
        }
        int mid = length / 2;
        int[] leftArray = new int[mid];
        int[] rightArray = new int[length - mid];

        for (int i = 0; i < mid; i++) {
            leftArray[i] = a[i];
        }
        for (int i = mid; i < length; i++) {
            rightArray[i - mid] = a[i];
        }
        mergeSort(leftArray, mid);
        mergeSort(rightArray, length - mid);

        merge(a, leftArray, rightArray, mid, length - mid);
    }

    public static void merge(int[] a, int[] leftArray, int[] rightArray, int leftArraySize, int rightArraySize) {
        int i = 0, j = 0, k = 0;
        while (i < leftArraySize && j < rightArraySize) {
            if (leftArray[i] <= rightArray[j]) {
                a[k++] = leftArray[i++];
            } else {
                a[k++] = rightArray[j++];
            }
        }
        while (i < leftArraySize) {
            a[k++] = leftArray[i++];
        }
        while (j < rightArraySize) {
            a[k++] = rightArray[j++];
        }
    }
}
