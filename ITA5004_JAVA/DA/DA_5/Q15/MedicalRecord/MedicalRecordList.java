package MedicalRecord;

public interface MedicalRecordList {
  public void addRecord(MedicalRecord medicalRecord);

  public void deleteRecord(int recordID);

  public void viewRecords();
}
