package Q1;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.println("Enter ride size: ");
        int size = Integer.valueOf(scan.nextLine());
        Queue rideQueue = new Queue(size);

        while (true) {
            System.out.println("");
            System.out.println("Menu:");
            System.out.println("1. Add new rider");
            System.out.println("2. Start Ride");
            System.out.println("3. Show ride status");
            System.out.println("4. Exit");
            System.out.print("Choice: ");
            int choice = Integer.valueOf(scan.nextLine());

            switch (choice) {
                case 1: {
                    boolean added = rideQueue.enqueue(1);

                    if (added) {
                        System.out.println("Rider added");
                    } else if (rideQueue.size() == size) {
                        System.out.println("Ride full! Start ride");
                    }
                }
                    break;

                case 2: {
                    if (rideQueue.size() != size) {
                        System.out.println("Ride still empty need " + (size - rideQueue.size()) + " riders");
                    } else {
                        while (rideQueue.dequeue() != null)
                            ;
                        System.out.println("Ride Started!");
                    }
                }
                    break;

                case 3: {
                    System.out.println("Ride currently has " + rideQueue.size() + " rider(s)");
                    if (rideQueue.size() != size) {
                        System.out.println("Add " + (size - rideQueue.size()) + " more rider(s) to start the ride");
                    } else {
                        System.out.println("Ready to start the ride");
                    }
                }
                    break;

                case 4:
                    return;

                default:
                    System.out.println("Invalid Choice");
            }
        }
    }
}
