package Patient;

public class Inpatient extends Patient {
  private int bedNumber;

  public Inpatient(String patientName, int patientAge, String patientGender, String patientID, String patientAddress,
      int bedNumber) {
    super(patientName, patientAge, patientGender, patientID, patientAddress);
    this.bedNumber = bedNumber;
  }

  @Override
  public String toString() {
    return "Inpatient [bedNumber=" + bedNumber + ", patientAddress=" + patientAddress + ", patientAge=" + patientAge
        + ", patientGender=" + patientGender + ", patientID=" + patientID + ", patientName=" + patientName + "]";
  }
}
