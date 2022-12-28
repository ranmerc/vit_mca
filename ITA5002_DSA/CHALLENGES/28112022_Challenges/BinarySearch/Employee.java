package BinarySearch;

public class Employee {
    public int emp_id;
    public String emp_name;
    public double emp_salary;

    public Employee(int id, String name, double salary) {
        emp_id = id;
        emp_name = name;
        emp_salary = salary;
    }

    @Override
    public String toString() {
        return "Employee " + emp_id + "\nEmployee Name: " + emp_name + "\nEmployee Salary: " + emp_salary;
    }
}
