public class TelephoneIndex {
  private TelephoneIndexEntry[] entries;
  public int length;

  public TelephoneIndex(int size) {
    this.entries = new TelephoneIndexEntry[size];
    this.length = 0;
  }

  public void addEntry(TelephoneIndexEntry entry) {
    this.entries[this.length] = entry;
    this.length++;
  }

  public TelephoneIndexEntry[] getEntryByName(String name) {
    TelephoneIndexEntry[] result = new TelephoneIndexEntry[this.length];

    for (int i = 0, k = 0; i < this.length; i++) {
      if (this.entries[i].getName().startsWith(name)) {
        result[k++] = this.entries[i];
      }
    }

    return result;
  }
}
