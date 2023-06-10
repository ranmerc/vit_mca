public class CreditCard extends Card {
  private double limit;

  public CreditCard(int cardno, String cust_name, String bank_name, double limit) {
    super(cardno, cust_name, bank_name);
    this.limit = limit;
  }

  public void display() {
    System.out.println("Card No: " + cardno);
    System.out.println("Customer Name: " + cust_name);
    System.out.println("Bank Name: " + bank_name);
    System.out.println("Limit: " + limit);
  }

  public void useCard(double amount) {
    if (amount < 0) {
      System.out.println("Transaction failed. Amount cannot be negative.");
    } else if (amount > limit) {
      System.out.println("Transaction failed. Amount exceeds limit.");
    } else {
      System.out.println("Transaction successful.");
      limit = limit - amount;
    }
  }
}
