class Counter {
  private int count;

  public Counter() {
    count = 0;
  }

  public int getCount() {
    return count;
  }

  public synchronized void incrementCount() {
    ++count;
  }

  public void decrementCount() {
    count -= 1;
  }
}

class CounterThread extends Thread {
  private Counter counter;

  public CounterThread(Counter c) {
    counter = c;
  }

  public void run() {
    counter.incrementCount();
  }
}

public class CounterMain {
  public static void main(String[] args) throws InterruptedException {
    Counter counter = new Counter();
    Thread threads[] = new Thread[50];

    for (int i = 0; i < 50; i++) {
      threads[i] = new CounterThread(counter);
      threads[i].start();
    }

    for (int i = 0; i < 50; ++i) {
      threads[i].join();
    }

    System.out.println(counter.getCount());
  }
}