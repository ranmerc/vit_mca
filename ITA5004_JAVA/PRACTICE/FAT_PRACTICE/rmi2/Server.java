import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;

public class Server {
  public static void main(String[] args) {
    try {
      ArithmeticService ar = new ArithmeticServiceImplementation();
      Registry registry = LocateRegistry.createRegistry(1099);
      registry.rebind("ArithmeticService", ar);
      System.out.println("Server started...");
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
}
