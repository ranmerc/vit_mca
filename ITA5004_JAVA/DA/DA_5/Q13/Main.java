import pack1.Sum;
import pack1.Difference;
import pack1.subpack1.Product;
import pack1.subpack1.Quotient;

public class Main {
  public static void main(String[] args) {
    System.out.println("Sum of 10 and 20 is " + Sum.sum(10, 20));
    System.out.println("Difference of 10 and 20 is " + Difference.difference(10, 20));
    System.out.println("Product of 10 and 20 is " + Product.product(10, 20));
    System.out.println("Quotient of 20 and 10 is " + Quotient.quotient(20, 10));
  }
}
