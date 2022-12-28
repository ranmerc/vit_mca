package Q2;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        int hardDiskSize, circularBufferSize, dvdSize, noOfBitsToBurn;

        System.out.print("Enter the size of hard disk: ");
        hardDiskSize = Integer.valueOf(scan.nextLine());

        System.out.print("Enter the size of circular buffer: ");
        circularBufferSize = Integer.valueOf(scan.nextLine());

        System.out.print("Enter the size of DVD: ");
        dvdSize = Integer.valueOf(scan.nextLine());

        System.out.print("Enter number of bits to burn: ");
        noOfBitsToBurn = Integer.valueOf(scan.nextLine());

        if (noOfBitsToBurn > hardDiskSize) {
            noOfBitsToBurn = hardDiskSize;
        }

        LinkedList hardDisk = new LinkedList(hardDiskSize);
        CircularQueue circularBuffer = new CircularQueue(circularBufferSize);
        LinkedList DVD = new LinkedList(dvdSize);

        fillListWithRandomBits(hardDisk, hardDiskSize);
        System.out.println("Hard Disk is: ");
        System.out.println(hardDisk);

        int noOfBitsBurned = 0;
        int noOfBitsWritten = 0;
        Node hardDiskPointer = hardDisk.head;

        while (noOfBitsBurned < noOfBitsToBurn) {
            // Writing
            noOfBitsWritten = 0;

            while (!circularBuffer.isFull() && hardDiskPointer != null && noOfBitsWritten < noOfBitsToBurn) {
                circularBuffer.enqueue(hardDiskPointer.value);
                hardDiskPointer = hardDiskPointer.next;
                noOfBitsWritten++;
            }

            System.out.println("Wrote " + noOfBitsWritten + " bits to buffer");
            System.out.println("Buffer is: ");
            System.out.println(circularBuffer);

            // Burning
            while (!circularBuffer.isEmpty() && noOfBitsBurned < noOfBitsToBurn) {
                DVD.insertAtEnd(circularBuffer.dequeue());
                noOfBitsBurned++;
            }

            System.out.println("Burned " + noOfBitsBurned + " bits to DVD");
            System.out.println("DVD is: ");
            System.out.println(DVD);
        }

        System.out.println("Burning process completed");
    }

    public static void fillListWithRandomBits(LinkedList list, int noOfBits) {
        for (int i = 0; i < noOfBits; i++) {
            list.insertAtEnd((int) (Math.random() * 2));
        }
    }
}
