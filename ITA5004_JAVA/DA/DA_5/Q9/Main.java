public class Main {
  public static void main(String[] args) {
    CreditCard cc = new CreditCard(123456789, "Jeevan Dobi", "Bank of India", 1000);
    System.out.println("Initial Details:");
    cc.display();
    System.out.println("\nAfter using card (500rs):");
    cc.useCard(500);
    cc.display();
    System.out.println("\nAfter using card (600rs):");
    cc.useCard(600);
    cc.display();
    System.out.println("\nAfter using card (-100rs):");
    cc.useCard(-100);
    cc.display();
  }
}
