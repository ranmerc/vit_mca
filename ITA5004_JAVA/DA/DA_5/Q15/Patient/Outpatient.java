package Patient;

public class Outpatient extends Patient {
  private String appointmentDate;

  public Outpatient(String patientName, int patientAge, String patientGender, String patientID, String patientAddress,
      String appointmentDate) {
    super(patientName, patientAge, patientGender, patientID, patientAddress);
    this.appointmentDate = appointmentDate;
  }

  @Override
  public String toString() {
    return "Outpatient [appointmentDate=" + appointmentDate + ", patientAddress=" + patientAddress + ", patientAge="
        + patientAge + ", patientGender=" + patientGender + ", patientID=" + patientID + ", patientName=" + patientName
        + "]";
  }
}
