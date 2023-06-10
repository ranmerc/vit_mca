package MedicalRecord;

public class RadiologyImage extends MedicalRecord {
  public String imageType;

  public RadiologyImage(int recordID, String imageType) {
    super(recordID);
    this.imageType = imageType;
  }

  @Override
  public String toString() {
    return "RadiologyImage:\nrecordID=" + recordID + "\nimageType=" + imageType;
  }
}
