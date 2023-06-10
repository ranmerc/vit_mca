enum ConnectionType {
    DOMESTIC,
    COMMERCIAL
}

public class ElectricBill {
    private String consumerNumber;
    private String consumerName;
    private double previousMonthReading;
    private double currentMonthReading;
    private ConnectionType typeOfConnection;

    public ElectricBill(
            String consumerNumber,
            String consumerName,
            double previousMonthReading,
            double currentMonthReading,
            ConnectionType typeOfConnection) {
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
        if (typeOfConnection == ConnectionType.DOMESTIC) {
            return calculateDomesticBill();
        } else {
            return calculateCommercialBill();
        }
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Electric Bill Details: \n");
        sb.append("Consumer Number: " + consumerName + "\n");
        sb.append("Consumer Name: " + consumerName + "\n");
        sb.append("Bill Amount: " + calculateBill() + "\n");
        return sb.toString();
    }
}
