public class Main {
  public static void main(String[] args) {
    ElectricBill domesticBill = new ElectricBill("12", "Consumer1", 100, 200, ConnectionType.DOMESTIC);
    System.out.println("Domestic Bill: " + domesticBill.calculateBill());

    ElectricBill commercialBill = new ElectricBill("14", "Consumer2", 100, 200, ConnectionType.COMMERCIAL);
    System.out.println("Commercial Bill: " + commercialBill.calculateBill());
  }
}
