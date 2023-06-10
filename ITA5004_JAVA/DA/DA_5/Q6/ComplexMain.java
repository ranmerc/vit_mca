import java.util.Scanner;

public class ComplexMain {

  public static ComplexNumber readComplexNumber(Scanner scan) {
    System.out.println("Enter a complex number");
    System.out.println("Enter real part:");
    double real = Double.valueOf(scan.nextLine());
    System.out.println("Enter real part:");
    double imag = Double.valueOf(scan.nextLine());
    return new ComplexNumber(real, imag);
  }

  public static void main(String[] args) {
    Scanner scan = new Scanner(System.in);
    ComplexNumber first, second;

    while (true) {
      System.out.println("Complex Arithmetic");
      System.out.println("1. Add");
      System.out.println("2. Subtract");
      System.out.println("3. Multiply");
      System.out.println("4. Exit");
      System.out.print("Enter your choice: ");
      int choice = Integer.parseInt(scan.nextLine());

      switch (choice) {
        case 1: {
          System.out.println("\nAddition of two complex numbers");
          first = readComplexNumber(scan);
          second = readComplexNumber(scan);
          System.out.println("The sum is " + ComplexArithmetic.add(first, second));
          break;
        }
        case 2: {
          System.out.println("\nSubtraction of two complex numbers");
          first = readComplexNumber(scan);
          second = readComplexNumber(scan);
          System.out.println("The subtraction is " + ComplexArithmetic.subtract(first, second));
          break;
        }
        case 3: {
          System.out.println("\nMultiplication of two complex numbers");
          first = readComplexNumber(scan);
          second = readComplexNumber(scan);
          System.out.println("The sum is " + ComplexArithmetic.multiply(first, second));
          break;
        }
        case 4:
          return;
        default:
          System.out.println("Invalid choice");
      }
    }
  }
}
