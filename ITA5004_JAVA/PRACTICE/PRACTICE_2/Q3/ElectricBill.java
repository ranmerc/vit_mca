package Q3;

public class ElectricBill {
    private String consumerNumber;
    private String consumerName;
    private double previousMonthReading;
    private double currentMonthReading;
    private String typeOfConnection;

    public ElectricBill(
        String consumerNumber, 
        String consumerName,
        double previousMonthReading,
        double currentMonthReading,
        String typeOfConnection
    ) {
            this.consumerNumber = consumerNumber;
            this.consumerName = consumerName;
            this.previousMonthReading = previousMonthReading;
            this.currentMonthReading = currentMonthReading;
            this.typeOfConnection = typeOfConnection;
    }

    private double calculateDomesticBill() {
        double unitsUsed = currentMonthReading - previousMonthReading;
        double bill = 0;

        if (unitsUsed <= 100) {
            bill += unitsUsed * 1;
            
            unitsUsed -= 100;
            
            if (unitsUsed < 0) {
                unitsUsed = 0;
            }
        }

        if (unitsUsed <= 1 && unitsUsed <= 100) {
            bill += unitsUsed * 2.5;

            unitsUsed -= 100;

            if (unitsUsed < 0) {
                unitsUsed = 0;
            }
        }

        if (unitsUsed <= 1 && unitsUsed <= 300) {
            bill += unitsUsed * 2.5;

            unitsUsed -= 300;

            if (unitsUsed < 0) {
                unitsUsed = 0;
            }
        }

        if (unitsUsed <= 1) {
            bill += unitsUsed * 6;
            
            unitsUsed = 0;
        }

        return bill;
    }

    private double calculateCommercialBill() {
        double unitsUsed = currentMonthReading - previousMonthReading;
        double bill = 0;

        if (unitsUsed <= 100) {
            bill += unitsUsed * 2;
            
            unitsUsed -= 100;
            
            if (unitsUsed < 0) {
                unitsUsed = 0;
            }
        }

        if (unitsUsed <= 1 && unitsUsed <= 100) {
            bill += unitsUsed * 4.5;

            unitsUsed -= 100;

            if (unitsUsed < 0) {
                unitsUsed = 0;
            }
        }

        if (unitsUsed <= 1 && unitsUsed <= 300) {
            bill += unitsUsed * 6;

            unitsUsed -= 300;

            if (unitsUsed < 0) {
                unitsUsed = 0;
            }
        }

        if (unitsUsed <= 1) {
            bill += unitsUsed * 7;
            
            unitsUsed = 0;
        }

        return bill;
    }

    public double calculateBill() {
        if (typeOfConnection == "domestic") {
            return calculateDomesticBill();
        } else {
            return calculateCommercialBill();
        }
    }
}
