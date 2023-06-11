import java.util.ArrayList;
import java.util.Collections;

public class Main {
  public static void main(String[] args) {
    ArrayList<Recruitment> candidates = new ArrayList<>();
    candidates.add(new Recruitment("Jack", "BA", 4, "22-05-2001", Gender.MALE));
    candidates.add(new Recruitment("Jill", "BSc", 3, "21-03-1995", Gender.FEMALE));
    candidates.add(new Recruitment("John", "BA", 4, "19-02-1985", Gender.MALE));

    System.out.println("Candidates before sorting:");
    for (Recruitment candidate : candidates) {
      System.out.println(candidate);
    }

    Collections.sort(candidates);

    System.out.println("\nCandidates after sorting:");
    for (Recruitment candidate : candidates) {
      System.out.println(candidate);
    }
  }
}
