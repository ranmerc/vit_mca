public class Q1 {
  public static void method() {
    try {
      method2();
    } catch (Exception e) {
      throw e;
    }
  }

  public static void method2() {
    throw new NullPointerException();
  }

  public static void main(String[] args) {
    try {
      method();
    } catch (Exception e) {
      System.out.println(e);
    }
  }
}