class Main {
    public static void main(String[] args) {
        int array[] = { 1, 11, 22, 33, 44, 55, 77 };
        int searchFor = 33;

        int index = binarySearch(array, array.length, searchFor);

        if (index == -1) {
            System.out.println("Value not found in array");
        } else {
            System.out.println("Found at position " + (index + 1));
        }
    }

    public static int binarySearch(int array[], int length, int value) {
        int min = 0;
        int max = length - 1;

        while (max >= min) {
            int mid = (min + max) / 2;

            if (value < array[mid]) {
                max = mid - 1;
            } else if (value > array[mid]) {
                min = mid + 1;
            } else {
                return mid;
            }
        }

        return -1;
    }
}