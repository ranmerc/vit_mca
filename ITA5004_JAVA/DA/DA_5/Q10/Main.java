public class Main {
  public static void main(String[] args) {
    Point p1 = new Point(-3, 2);
    Point p2 = new Point(6, 2);
    Point p3 = new Point(14, -13);
    Point p4 = new Point(5, -13);

    Quadrilateral parallelogram = new Parallelogram(p1, p2, p3, p4);
    System.out.println("Area of Parallelogram: " + parallelogram.area());

    p1 = new Point(2, -4);
    p2 = new Point(10, -4);
    p3 = new Point(8, 1);
    p4 = new Point(5, 1);
    Quadrilateral trapezoid = new Trapezoid(p1, p2, p3, p4);
    System.out.println("Area of Trapezoid: " + trapezoid.area());

    p1 = new Point(0, 0);
    p2 = new Point(10, 0);
    p3 = new Point(10, 5);
    p4 = new Point(0, 5);
    Quadrilateral rectangle = new Rectangle(p1, p2, p3, p4);
    System.out.println("Area of Rectangle: " + rectangle.area());

    p1 = new Point(0, 0);
    p2 = new Point(10, 0);
    p3 = new Point(10, 10);
    p4 = new Point(0, 10);
    Quadrilateral square = new Square(p1, p2, p3, p4);
    System.out.println("Area of Square: " + square.area());
  }
}
