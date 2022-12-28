import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Queue queue = new Queue();
        Scanner scanner = new Scanner(System.in);

        System.out.println("Enter Queue Size: ");
        int queueSize = Integer.valueOf(scanner.nextLine());

        System.out.println("Enter Queue: ");
        for (int i = 0; i < queueSize; i++) {
            System.out.println("Enter element " + (i + 1));
            int valueToInsert = Integer.valueOf(scanner.nextLine());
            
            queue.enqueue(valueToInsert);
        }

        System.out.println("Enter the number of elements to reverse: ");
        int numberOfElementsToReverse = Integer.valueOf(scanner.nextLine());
        
        reverse(queue, numberOfElementsToReverse);

        System.out.println("Queue with " + numberOfElementsToReverse + " elements reversed is: ");
        queue.print();
        System.out.println("");
    }

    public static void reverse(Queue q, int k) {
        Stack stack = new Stack();
        Queue auxiallryQueue = new Queue();

        int i = 0;
    
        while (i < k && q.size() > 0) {
            stack.push(q.dequeue());
            i++;
        }

        while (q.size() > 0) {
            auxiallryQueue.enqueue(q.dequeue());
        }

        while (!stack.isEmpty()) {
            q.enqueue(stack.pop());
        }

        while (auxiallryQueue.size() > 0) {
            q.enqueue(auxiallryQueue.dequeue());
        }
    }
}