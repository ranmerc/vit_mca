import java.rmi.*;

public interface ArithmeticService extends Remote {
  public int add(int a, int b) throws RemoteException;
}