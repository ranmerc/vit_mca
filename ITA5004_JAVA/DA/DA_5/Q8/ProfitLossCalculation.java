public class ProfitLossCalculation extends ProductData {
  public ProfitLossCalculation(int quantity, double costPrice, double sellingPrice) {
    super(quantity, costPrice, sellingPrice);
  }

  public double calculate() {
    return (this.sellingPrice - this.costPrice) * this.quantity;
  }
}
