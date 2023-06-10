public class Main {
  public static void main(String[] args) {
    TelephoneIndex index = new TelephoneIndex(10);
    index.addEntry(new TelephoneIndexEntry("John", "1234567890"));
    index.addEntry(new TelephoneIndexEntry("Jane", "1234567891"));
    index.addEntry(new TelephoneIndexEntry("Jack", "1234567892"));
    index.addEntry(new TelephoneIndexEntry("Jill", "1234567893"));
    index.addEntry(new TelephoneIndexEntry("James", "1234567894"));
    index.addEntry(new TelephoneIndexEntry("Jenny", "1234567895"));
    index.addEntry(new TelephoneIndexEntry("Jesse", "1234567896"));
    index.addEntry(new TelephoneIndexEntry("Jasmine", "1234567897"));
    index.addEntry(new TelephoneIndexEntry("Jared", "1234567898"));
    index.addEntry(new TelephoneIndexEntry("Jade", "1234567899"));

    System.out.println("Telephone entries starting with Ja:");
    TelephoneIndexEntry[] entries = index.getEntryByName("Ja");
    for (TelephoneIndexEntry entry : entries) {
      if (entry != null) {
        System.out.println(entry);
      }
    }

    System.out.println("");
    System.out.println("Telephone entries starting with Jac:");
    entries = index.getEntryByName("Jac");
    for (TelephoneIndexEntry entry : entries) {
      if (entry != null) {
        System.out.println(entry);
      }
    }
  }
}
