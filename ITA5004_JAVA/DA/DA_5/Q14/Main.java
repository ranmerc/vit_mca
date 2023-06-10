import pack1.Pack1;
import pack2.Pack2;

public class Main implements Pack1, Pack2 {
  public static void main(String[] args) {
    Main main = new Main();
    System.out.println("Sum of 10 and 20 is " + main.add(10, 20));
    System.out.println("Difference of 10 and 20 is " + main.subtract(10, 20));
    System.out.println("Product of 10 and 20 is " + main.multiply(10, 20));
    System.out.println("Division of 20 and 10 is " + main.divide(20, 10));
  }

  public int add(int a, int b) {
    return a + b;
  }

  public int subtract(int a, int b) {
    return a - b;
  }

  public int multiply(int a, int b) {
    return a * b;
  }

  public int divide(int a, int b) {
    return a / b;
  }
}
