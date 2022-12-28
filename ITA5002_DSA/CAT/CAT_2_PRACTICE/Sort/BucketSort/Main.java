package BucketSort;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        double onlyDecimalArray[] = { 0.78, 0.17, 0.39, 0.26, 0.72, 0.94, 0.21, 0.12, 0.23, 0.68 };
        int onlyDecimalLength = onlyDecimalArray.length;

        bucketSortOnlyDecimal(onlyDecimalArray, onlyDecimalLength);

        System.out.println("");
        for (int i = 0; i < onlyDecimalLength; i++) {
            System.out.print(onlyDecimalArray[i] + " ");
        }

        double integerDecimalArray[] = { 3.68, 4.23, 1.12, 3.22, 1.22, 8.72, 9.05, 9.15 };
        int integerDecimalLength = integerDecimalArray.length;

        bucketSortIntegerDecimal(integerDecimalArray, integerDecimalLength);

        System.out.println("");
        for (int i = 0; i < integerDecimalLength; i++) {
            System.out.print(integerDecimalArray[i] + " ");
        }
    }

    public static void bucketSortOnlyDecimal(double array[], int length) {
        ArrayList<ArrayList<Double>> buckets = new ArrayList<>();

        for (int i = 0; i < length; i++) {
            ArrayList<Double> bucket = new ArrayList<>();
            buckets.add(bucket);
        }

        for (int i = 0; i < length; i++) {
            buckets.get((int) (length * array[i])).add(array[i]);
        }

        for (int i = 0; i < length; i++) {
            ArrayList<Double> currentBucket = buckets.get(i);
            insertionSort(currentBucket, currentBucket.size());
        }

        for (int i = 0, j = 0; i < length; i++) {
            ArrayList<Double> currentBucket = buckets.get(i);
            for (int k = 0; k < currentBucket.size(); k++) {
                array[j++] = currentBucket.get(k);
            }
        }
    }

    public static void bucketSortIntegerDecimal(double array[], int length) {
        ArrayList<ArrayList<Double>> buckets = new ArrayList<>();
        double min = minValue(array, length);
        double max = maxValue(array, length);
        double range = (max - min) / (length - 1);

        for (int i = 0; i < length; i++) {
            ArrayList<Double> bucket = new ArrayList<>();
            buckets.add(bucket);
        }

        for (int i = 0; i < length; i++) {
            buckets.get((int) ((array[i] - min) / range)).add(array[i]);
        }

        for (int i = 0; i < length; i++) {
            ArrayList<Double> currentBucket = buckets.get(i);
            insertionSort(currentBucket, currentBucket.size());
        }

        for (int i = 0, j = 0; i < length; i++) {
            ArrayList<Double> currentBucket = buckets.get(i);
            for (int k = 0; k < currentBucket.size(); k++) {
                array[j++] = currentBucket.get(k);
            }
        }
    }

    public static double minValue(double[] array, int length) {
        double minimum = array[0];

        for (int i = 0; i < length; i++) {
            if (array[i] < minimum) {
                minimum = array[i];
            }
        }

        return minimum;
    }

    public static double maxValue(double[] array, int length) {
        double maximum = array[0];

        for (int i = 0; i < length; i++) {
            if (array[i] > maximum) {
                maximum = array[i];
            }
        }

        return maximum;
    }

    public static void insertionSort(ArrayList<Double> array, int length) {
        for (int i = 1; i < length; i++) {
            int j = i - 1;
            double key = array.get(i);

            while (j >= 0 && array.get(j) > key) {
                array.set(j + 1, array.get(j));
                j--;
            }

            array.set(j + 1, key);
        }
    }
}
