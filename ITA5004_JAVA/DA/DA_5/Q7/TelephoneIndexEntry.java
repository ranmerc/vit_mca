public class TelephoneIndexEntry {
  private String name;
  private String number;

  public TelephoneIndexEntry(String name, String number) {
    this.name = name;
    this.number = number;
  }

  public String getName() {
    return name;
  }

  public String getNumber() {
    return number;
  }

  @Override
  public String toString() {
    return this.name + " " + this.number;
  }
}
