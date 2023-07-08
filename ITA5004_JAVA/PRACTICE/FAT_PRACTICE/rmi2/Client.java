import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;

public class Client {
  public static void main(String[] args) {
    try {
      ArithmeticService ar;

      Registry registry = LocateRegistry.getRegistry("localhost", 1099);
      ar = (ArithmeticServiceImplementation) registry.lookup("ArithmeticService");
      System.out.println(ar.add(4, 5));
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
}
