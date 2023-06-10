public class Discount extends Special {
  public double process(double P, double R) {
    double total = P - P * R / 100;
    return total;
  }
}
