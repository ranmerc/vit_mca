public class Main {
  public static void main(String[] args) {
    GCD approach1 = new APPROACH1();
    GCD approach2 = new APPROACH2();

    System.out.println("GCD of 20 and 30: ");
    System.out.println("With APPROACH1: " + approach1.computeGCD(20, 30));
    System.out.println("");
    System.out.println("With APPROACH2: " + approach2.computeGCD(20, 30));
  }
}
