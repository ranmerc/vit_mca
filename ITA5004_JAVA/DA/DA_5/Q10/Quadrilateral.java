abstract public class Quadrilateral {
  protected Point p1, p2, p3, p4;

  public Quadrilateral(Point p1, Point p2, Point p3, Point p4) {
    this.p1 = p1;
    this.p2 = p2;
    this.p3 = p3;
    this.p4 = p4;
  }

  abstract public double area();
}
