public class APPROACH2 implements GCD {
  public int computeGCD(int a, int b) {
    int gcd = 1;
    for (int i = 1; i <= a && i <= b; i++) {
      if (a % i == 0 && b % i == 0) {
        System.out.println("Common Divisor: " + i);
        gcd = i;
      }
    }
    return gcd;
  }
}
