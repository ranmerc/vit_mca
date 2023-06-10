public class Main {
  public static void main(String[] args) {
    ProfitLossCalculation[] calculations = new ProfitLossCalculation[3];
    calculations[0] = new ProfitLossCalculation(10, 100, 200);
    calculations[1] = new ProfitLossCalculation(20, 200, 300);
    calculations[2] = new ProfitLossCalculation(30, 400, 300);

    for (ProfitLossCalculation calculation : calculations) {
      double profitLoss = calculation.calculate();
      System.out.println((profitLoss > 0 ? "Profit" : "Loss") + ": " + profitLoss);
      System.out.println("");
    }
  }
}
