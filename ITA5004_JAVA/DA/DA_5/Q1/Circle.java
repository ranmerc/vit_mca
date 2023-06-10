public class Circle {
  private double radius;

  public Circle() {
    this.radius = 1.0;
  }

  public Circle(double radius) {
    this.radius = radius;
  }

  public double getRadius() {
    return this.radius;
  }

  public double findArea() {
    return 3.14 * this.radius * this.radius;
  }
}
