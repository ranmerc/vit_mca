public class ComplexNumber {
  private double real;
  private double imaginary;

  public ComplexNumber(double real, double imaginary) {
    this.real = real;
    this.imaginary = imaginary;
  }

  public double getReal() {
    return this.real;
  }

  public double getImaginary() {
    return this.imaginary;
  }

  public void setReal(double real) {
    this.real = real;
  }

  public void setImaginary(double imaginary) {
    this.imaginary = imaginary;
  }

  public String toString() {
    return this.real + " + " + this.imaginary + "i";
  }
}
