package BinarySearch;

public class EmployeeList {
    private Employee empList[];
    private int lastFreeIndex;
    private int size;
    private int noOfComparisons;

    public EmployeeList() {
        size = 10;
        empList = new Employee[size];
        lastFreeIndex = 0;
    }

    public boolean addEmployee(Employee e) {
        if (lastFreeIndex >= size) {
            return false;
        }

        empList[lastFreeIndex] = e;
        lastFreeIndex++;
        sort();
        return true;
    }

    public void sort() {
        for (int i = 1; i < lastFreeIndex; i++) {
            Employee key = empList[i];
            
            int j = i - 1;

            while (j >= 0 && empList[j].emp_id > key.emp_id) {
                empList[j + 1] = empList[j];
                j = j - 1;
            }

            empList[j + 1] = key;
        }
    }

    public int search(int empId) {
        noOfComparisons = 0;
        int foundAtIndex = binSearch(empId, 0, lastFreeIndex - 1);
        System.out.println("Number of comparisons made: " + noOfComparisons);
        return foundAtIndex;
    }

    public int binSearch(int empId, int min, int max) {
        int mid = (min + max) / 2;

        if (min > max) {
            return -1;
        }

        noOfComparisons++;
        if (empList[mid].emp_id == empId) {
            return mid;
        } else if (empList[mid].emp_id > empId) {
            return binSearch(empId, min, mid - 1);
        } else  {
            return binSearch(empId, mid + 1, max);
        }
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();

        for (int i = 0; i < lastFreeIndex; i++) {
            sb.append(empList[i].toString() + "\n");
        }

        return sb.toString();
    }
}
