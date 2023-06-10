package MedicalRecord;

public class LaboratoryReport extends MedicalRecord {
  public String testName;

  public LaboratoryReport(int recordID, String testName) {
    super(recordID);
    this.testName = testName;
  }

  @Override
  public String toString() {
    return "LaboratoryReport:\nrecordID=" + recordID + "\ntestName=" + testName;
  }
}
