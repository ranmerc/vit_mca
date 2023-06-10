public class Rectangle extends Parallelogram {
  public Rectangle(Point p1, Point p2, Point p3, Point p4) {
    super(p1, p2, p3, p4);
  }

  public double area() {
    double l = Point.distance(p1, p2);
    double b = Point.distance(p1, p4);
    return l * b;
  }
}
