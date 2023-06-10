/* Create several inpatients and outpatients and admit them to the hospital 
o Display the list of patients in the hospital 
o Add some medical records for the patients, both laboratory reports and 
radiology images 
o Display the list of medical records for a given patient 
o Delete some medical records for the patients 
o Discharge some of the patients from the hospital 
o Display the list of patients in the hospital again to show the updated list of 
patients
 */

import Hospital.Hospital;
import MedicalRecord.LaboratoryReport;
import MedicalRecord.RadiologyImage;
import Patient.Patient;
import Patient.Inpatient;
import Patient.Outpatient;

public class Main {
  public static void main(String[] args) {
    Hospital hospital = new Hospital();

    Patient in1 = new Inpatient("Jack", 31, "F", "123", "Addr1", 101);
    Patient in2 = new Inpatient("Jill", 32, "M", "456", "Addr2", 102);
    Patient out1 = new Outpatient("John", 33, "F", "789", "Addr3", "22-10-2023");
    Patient out2 = new Outpatient("Jane", 34, "M", "101", "Addr4", "23-11-2023");

    hospital.admitPatient(in1);
    hospital.admitPatient(in2);
    hospital.admitPatient(out1);
    hospital.admitPatient(out2);

    System.out.println("Patients in Hospital initially:");
    hospital.displayPatients();

    System.out.println("");

    in1.addRecord(new LaboratoryReport(123, "Blood test"));
    in1.addRecord(new RadiologyImage(125, "X-Ray"));

    System.out.println("Medical records for patient:");
    System.out.println(in1);
    hospital.displayMedicalRecords(in1);

    System.out.println("");

    System.out.println("Deleting record 123 for patient " + in1);
    in1.deleteRecord(123);
    System.out.println("Discharging patient " + in2);
    hospital.dischargePatient(in2);

    System.out.println("");
    System.out.println("Patients in Hospital after discharge:");
    hospital.displayPatients();
  }
}
