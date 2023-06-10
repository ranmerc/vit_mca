import java.util.ArrayList;
import java.util.Collections;

public class Main {
  public static void main(String[] args) {
    // CSE students
    StudentResults results1 = new StudentResults("19CSE0001", "John", "CSE", 9);
    StudentResults results2 = new StudentResults("19CSE0002", "Jane", "CSE", 7.5);
    StudentResults results3 = new StudentResults("19CSE0003", "Jack", "CSE", 8.5);

    // ECE students
    StudentResults results4 = new StudentResults("19ECE0001", "Jill", "ECE", 6);
    StudentResults results5 = new StudentResults("19ECE0002", "James", "ECE", 8);
    StudentResults results6 = new StudentResults("19ECE0003", "Jenny", "ECE", 7);

    ArrayList<StudentResults> CSEResults = new ArrayList<StudentResults>();
    CSEResults.add(results1);
    CSEResults.add(results2);
    CSEResults.add(results3);

    ArrayList<StudentResults> ECEResults = new ArrayList<StudentResults>();
    ECEResults.add(results4);
    ECEResults.add(results5);
    ECEResults.add(results6);

    System.out.println("Shortlisted CSE students:");
    Collections.sort(CSEResults, Collections.reverseOrder());

    System.out.println(CSEResults.get(0));
    System.out.println(CSEResults.get(1));

    System.out.println("Shortlisted ECE students:");
    Collections.sort(ECEResults, Collections.reverseOrder());

    System.out.println(ECEResults.get(0));
    System.out.println(ECEResults.get(1));
  }
}
