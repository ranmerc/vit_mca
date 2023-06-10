public class Main {
  public static void main(String[] args) {
    Circle c1 = new Circle();

    System.out.println("Radius of default circle: " + c1.getRadius());
    System.out.println("Area of default circle: " + c1.findArea());

    Circle c2 = new Circle(4);
    System.out.println("Radius of custom circle: " + c2.getRadius());
    System.out.println("Area of custom circle: " + c2.findArea());

  }
}