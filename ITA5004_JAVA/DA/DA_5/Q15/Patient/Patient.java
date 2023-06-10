package Patient;

import MedicalRecord.*;
import java.util.ArrayList;

public abstract class Patient implements MedicalRecordList {
  public String patientName;
  public int patientAge;
  public String patientGender;
  public String patientID;
  public String patientAddress;
  public ArrayList<MedicalRecord> medicalRecords;

  public Patient(String patientName, int patientAge, String patientGender, String patientID, String patientAddress) {
    this.patientName = patientName;
    this.patientAge = patientAge;
    this.patientGender = patientGender;
    this.patientID = patientID;
    this.patientAddress = patientAddress;
    this.medicalRecords = new ArrayList<MedicalRecord>();
  }

  public void addRecord(MedicalRecord medicalRecord) {
    this.medicalRecords.add(medicalRecord);
  }

  public void deleteRecord(int recordID) {
    for (int i = 0; i < this.medicalRecords.size(); i++) {
      if (this.medicalRecords.get(i).recordID == recordID) {
        this.medicalRecords.remove(i);
        break;
      }
    }
  }

  public void viewRecords() {
    for (int i = 0; i < this.medicalRecords.size(); i++) {
      System.out.println(this.medicalRecords.get(i));
    }
  }
}
