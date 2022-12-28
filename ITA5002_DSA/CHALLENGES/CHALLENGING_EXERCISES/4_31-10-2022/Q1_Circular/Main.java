package Q1_Circular;

import java.util.Scanner;

import Q1.LinkedList;

public class Main {
    public static void main(String[] args) {
        LinkedList<Character> firstNameList = new LinkedList<>();
        LinkedList<Character> secondNameList = new LinkedList<>();
        CircularLinkedList<Character> flamesList = new CircularLinkedList<>();

        Scanner scan = new Scanner(System.in);

        System.out.println("Enter first name:");
        String firstNameString = scan.nextLine();
        System.out.println("Enter second name:");
        String secondNameString = scan.nextLine();

        stringToList(firstNameString.toLowerCase(), firstNameList);
        stringToList(secondNameString.toLowerCase(), secondNameList);
        stringToList("FLAMES", flamesList);

        for (int i = 0; i < firstNameList.size(); i++) {
            boolean removed = secondNameList.remove(firstNameList.get(i));
            if (removed) {
                firstNameList.remove(i);
                i--;
            }
        }

        int factor = firstNameList.size() + secondNameList.size();

        int i = 1;
        Node<Character> iterator = flamesList.head;

        while (flamesList.size() > 1) {
            while (i < factor) {
                iterator = iterator.next;
                i++;
            }

            Node<Character> nextToIterator = iterator.next;
            flamesList.remove(iterator);
            iterator = nextToIterator;
            i = 1;
        }

        System.out.println("Relationships is:");

        switch (flamesList.head.value) {
            case 'F': {
                System.out.println(firstNameString + " friends " + secondNameString);
                break;
            }
            case 'L': {
                System.out.println(firstNameString + " loves " + secondNameString);
                break;
            }
            case 'A': {
                System.out.println(firstNameString + " affection " + secondNameString);
                break;
            }
            case 'M': {
                System.out.println(firstNameString + " marriage " + secondNameString);
                break;
            }
            case 'E': {
                System.out.println(firstNameString + " enmity " + secondNameString);
                break;
            }
            case 'S': {
                System.out.println(firstNameString + " sister " + secondNameString);
                break;
            }
        }
    }

    private static void stringToList(String string, LinkedList<Character> list) {
        for (int i = 0; i < string.length(); i++) {
            list.addLast(string.charAt(i));
        }
    }

    private static void stringToList(String string, CircularLinkedList<Character> list) {
        for (int i = 0; i < string.length(); i++) {
            list.insertAtEnd(string.charAt(i));
        }
    }
}
