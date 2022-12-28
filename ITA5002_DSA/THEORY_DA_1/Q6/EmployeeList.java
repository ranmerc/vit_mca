// import DoubleEndedPriorityQueue

class EmployeeList {
    DoubleEndedPriorityQueue<Employee> list;

    public EmployeeList() {
        this.list = new DoubleEndedPriorityQueue<>();
    }

    public void insertEmployee(Employee e) {
        list.insert(e);
    }

    public Employee getMinEmployee() {
        return list.getMin();
    }

    public Employee getMaxEmployee() {
        return list.getMax();
    }
}
