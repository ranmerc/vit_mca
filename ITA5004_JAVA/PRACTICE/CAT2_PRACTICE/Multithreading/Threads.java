class PrintThread extends Thread {
  public PrintThread() {
    this.setName("Unnamed thread");
  }

  public PrintThread(String name) {
    this.setName(name);
  }

  public void run() {
    System.out.println("hello from " + this.getName());
  }
}

public class Threads {
  public static void main(String[] args) {
    PrintThread p1 = new PrintThread("hello");
    PrintThread p2 = new PrintThread();
    PrintThread p3 = new PrintThread();

    p1.start();
    p2.start();
    p3.start();
  }
}