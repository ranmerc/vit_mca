public class ProductData {
  protected int quantity;
  protected double costPrice;
  protected double sellingPrice;

  public ProductData(int quantity, double costPrice, double sellingPrice) {
    this.quantity = quantity;
    this.costPrice = costPrice;
    this.sellingPrice = sellingPrice;
  }

  public String toString() {
    return "Quantity: " + quantity + ", Cost Price: " + costPrice + ", Selling Price: " + sellingPrice;
  }
}
