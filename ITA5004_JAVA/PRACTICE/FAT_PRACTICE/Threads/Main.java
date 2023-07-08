class Vehicle {
  private int fuelRemaining;
  private int fuelCapacity;

  public Vehicle() {
    this.fuelCapacity = 100;
    this.fuelRemaining = 0;
  }

  public synchronized void drive() {
    try {
      fill(30);
      while (fuelRemaining > 0) {
        fuelRemaining -= 5;
        System.out.println("Used 5l fuel in " + Thread.currentThread().getName());
      }

      while (fuelRemaining <= 0) {
        System.out.println("Waiting in " + Thread.currentThread().getName());
        wait();
        drive();
      }
    } catch (Exception e) {
      System.out.println(e);
    }
  }

  public synchronized void fill(int fuel) throws InterruptedException {
    System.out.println("Filling by " + Thread.currentThread().getName());
    fuelRemaining = (fuelRemaining + fuel) % fuelCapacity;
    notifyAll();
  }
}

class Driver extends Thread {
  private Vehicle vehicle;

  public Driver(Vehicle vehicle, String name) {
    this.vehicle = vehicle;
    this.setName(name);
  }

  public void run() {
    vehicle.drive();
  }
}

public class Main {
  public static void main(String[] args) throws InterruptedException {
    Vehicle v = new Vehicle();
    Driver d1 = new Driver(v, "Driver 1");
    Driver d2 = new Driver(v, "Driver 2");

    d1.start();
    d2.start();

    d1.join();
    d2.join();
  }
}
