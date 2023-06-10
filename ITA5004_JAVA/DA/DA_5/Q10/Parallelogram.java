public class Parallelogram extends Quadrilateral {
  public Parallelogram(Point p1, Point p2, Point p3, Point p4) {
    super(p1, p2, p3, p4);
  }

  public double area() {
    double b = Point.distance(p1, p2);
    double h = Math.abs(p1.getY() - p4.getY());
    return b * h;
  }
}
