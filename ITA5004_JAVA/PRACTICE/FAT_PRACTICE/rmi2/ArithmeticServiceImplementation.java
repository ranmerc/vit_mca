import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;

public class ArithmeticServiceImplementation extends UnicastRemoteObject implements ArithmeticService {
  public ArithmeticServiceImplementation() throws RemoteException {
    super();
  }

  @Override
  public int add(int a, int b) throws RemoteException {
    return a + b;
  }

}
