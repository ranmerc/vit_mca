public class Main {
  public static void main(String[] args) {
    Special discount = new Discount();

    System.out.println("Total price after discount: " + discount.process(100, 10));
  }
}
