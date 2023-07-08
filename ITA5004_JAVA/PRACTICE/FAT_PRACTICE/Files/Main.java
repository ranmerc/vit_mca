import java.io.*;

public class Main {

  public static void main(String[] args) {
    try {
      File file = new File("README.md");
      // FileReader fr = new FileReader(file);
      // int c;
      // while ((c = (int) fr.read()) != -1) {
      // System.out.print((char) c);
      // }
      // FileWriter fw = new FileWriter(file, true);
      // fw.write("hello");

      // fw.close();
      // fr.close();

      RandomAccessFile raf = new RandomAccessFile(file, "rw");
      System.out.println(raf.length());
      System.out.println(raf.readChar());
      raf.close();

    } catch (FileNotFoundException fe) {
      System.out.println("No such file exists!");
    } catch (IOException io) {
      System.out.println("Unable to read or write file!");
    }
  }
}
