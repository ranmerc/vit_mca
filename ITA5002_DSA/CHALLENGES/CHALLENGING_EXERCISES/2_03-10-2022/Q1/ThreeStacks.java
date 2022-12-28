package Q1;

public class ThreeStacks {
    private int[] arr;
    // size of individual array
    private int m;
    private int[] lastFreeIndex;
    private int[] firstAvailableIndex;
    private int[] lastAvailableIndex;

    public ThreeStacks(int n) {
        m = n / 3;
        arr = new int[n];

        lastFreeIndex = new int[3];
        lastAvailableIndex = new int[3];
        firstAvailableIndex = new int[3];

        firstAvailableIndex[0] = m - 1;
        lastFreeIndex[0] = firstAvailableIndex[0];
        lastAvailableIndex[0] = 0;

        firstAvailableIndex[1] = m;
        lastFreeIndex[1] = firstAvailableIndex[1];
        lastAvailableIndex[1] = 2 * m - 1;

        firstAvailableIndex[2] = 2 * m;
        lastFreeIndex[2] = firstAvailableIndex[2];
        lastAvailableIndex[2] = 3 * m - 1;
    }

    public boolean isEmpty(int i) {
        if (i == 1) {
            return lastFreeIndex[0] >= firstAvailableIndex[0];
        }

        return lastFreeIndex[i - 1] <= firstAvailableIndex[i - 1];
    }

    public boolean isFull(int i) {
        if (i == 1) {
            return lastFreeIndex[i - 1] < lastAvailableIndex[i - 1];
        }

        return lastFreeIndex[i - 1] > lastAvailableIndex[i - 1];
    }

    public boolean push(int i, int val) {
        if (isFull(i)) {
            System.out.println("Stack Overflow!");
            return false;
        }

        if (i == 1) {
            arr[lastFreeIndex[0]] = val;
            lastFreeIndex[0]--;
            print(i);
            return true;
        }

        arr[lastFreeIndex[i - 1]] = val;
        lastFreeIndex[i - 1]++;
        print(i);
        return true;
    }

    public Integer pop(int i) {
        if (isEmpty(i)) {
            System.out.println("Stack Underflow!");
            return null;
        }

        if (i == 1) {
            lastFreeIndex[0]++;
            print(i);
            return arr[lastFreeIndex[0]];
        } else {
            lastFreeIndex[i - 1]--;
            print(i);
            return arr[lastFreeIndex[i - 1]];
        }
    }

    public void print(int i) {
        System.out.println("Stack " + i + "-");
        if (isEmpty(i)) {
            System.out.println("Empty");
        }

        if (i == 1) {
            for (int j = m - 1; j > lastFreeIndex[0]; j--) {
                System.out.print(arr[j] + " ");
            }
        }

        for (int j = firstAvailableIndex[i - 1]; j < lastFreeIndex[i - 1]; j++) {
            System.out.print(arr[j] + " ");
        }
    }
}