public class APPROACH1 implements GCD {
  public int computeGCD(int a, int b) {
    if (a == 0)
      return b;

    return computeGCD(b % a, a);
  }
}
