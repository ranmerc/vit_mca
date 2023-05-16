import java.io.*;

public class Files {
  public static void main(String[] args) {
    try {
      FileReader fr = new FileReader("E:\\LEARNING\\vit_mca\\ITA5004_JAVA\\PRACTICE\\CAT2_PRACTICE\\Files\\text.txt");
      int readChar;
      String content = "";
      while ((readChar = fr.read()) != -1) {
        content += (char) readChar;
      }
      fr.close();
      System.out.println(content);

      File f = new File("E:\\LEARNING\\vit_mca\\ITA5004_JAVA\\PRACTICE\\CAT2_PRACTICE\\Files\\temp.txt");
      f.createNewFile();
      FileWriter fw = new FileWriter(f);
      fw.write(content);
      fw.close();
    } catch (FileNotFoundException fe) {
      System.out.println("File not Found");
    } catch (IOException ioe) {
      System.err.println("Unable to read/write file");
    }

  }
}
