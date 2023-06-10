import java.util.Iterator;

public class StudentResults implements Comparable<StudentResults>, Iterable<StudentResults> {
  private String regNo;
  private String name;
  private String branch;
  private double cgpa;

  public StudentResults(String regNo, String name, String branch, double cgpa) {
    this.regNo = regNo;
    this.name = name;
    this.branch = branch;
    this.cgpa = cgpa;
  }

  @Override
  public int compareTo(StudentResults results) {
    return (int) (this.cgpa - results.cgpa);
  }

  @Override
  public String toString() {
    return this.regNo + " " + this.name + " " + this.branch + " " + this.cgpa;
  }
}