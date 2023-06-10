public class Trapezoid extends Parallelogram {
  public Trapezoid(Point p1, Point p2, Point p3, Point p4) {
    super(p1, p2, p3, p4);
  }

  public double area() {
    double a = Point.distance(p1, p2);
    double b = Point.distance(p3, p4);
    double h = Math.abs(p1.getY() - p4.getY());
    return (a + b) * h / 2;
  }
}
