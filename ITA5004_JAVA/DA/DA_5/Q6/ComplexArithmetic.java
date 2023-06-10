public class ComplexArithmetic {
  public static ComplexNumber add(ComplexNumber first, ComplexNumber second) {
    double real = first.getReal() + second.getReal();
    double imaginary = first.getImaginary() + second.getImaginary();
    return new ComplexNumber(real, imaginary);
  }

  public static ComplexNumber subtract(ComplexNumber first, ComplexNumber second) {
    double real = first.getReal() - second.getReal();
    double imaginary = first.getImaginary() - second.getImaginary();
    return new ComplexNumber(real, imaginary);
  }

  public static ComplexNumber multiply(ComplexNumber first, ComplexNumber second) {
    double real = first.getReal() * second.getReal() - first.getImaginary() * second.getImaginary();
    double imaginary = first.getReal() * second.getImaginary() + first.getImaginary() * second.getReal();
    return new ComplexNumber(real, imaginary);
  }
}
