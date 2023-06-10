package Hospital;

import java.util.ArrayList;

import Patient.Patient;

public class Hospital {
  public ArrayList<Patient> patients;

  public Hospital() {
    this.patients = new ArrayList<Patient>();
  }

  public void admitPatient(Patient patient) {
    this.patients.add(patient);
  }

  public void dischargePatient(Patient patient) {
    for (Patient currentPatient : this.patients) {
      if (currentPatient.patientID.equals(patient.patientID)) {
        this.patients.remove(patient);
        break;
      }
    }
  }

  public void displayPatients() {
    for (Patient patient : this.patients) {
      System.out.println(patient);
    }
  }

  public void displayMedicalRecords(Patient patient) {
    for (Patient currentPatient : this.patients) {
      if (currentPatient.patientID.equals(patient.patientID)) {
        currentPatient.viewRecords();
        break;
      }
    }
  }
}
