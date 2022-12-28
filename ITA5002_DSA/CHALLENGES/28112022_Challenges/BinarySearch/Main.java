package BinarySearch;

public class Main {
    public static void main(String[] args) {
        EmployeeList empList = new EmployeeList();
        Employee e = new Employee(2, "Name", 2000);
        Employee e2 = new Employee(5, "Name", 2000);
        Employee e3 = new Employee(0, "Name", 2000);
        empList.addEmployee(e);
        empList.addEmployee(e2);
        empList.addEmployee(e3);
        System.out.println(empList.search(5));
    }
}
