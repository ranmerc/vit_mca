package Q2;

import Stack.Stack;

public class BrowserURLStack {
    private Stack backwardStack;
    private Stack forwardStack;
    private int URLCounter;
    private String currentURL;

    public BrowserURLStack() {
        backwardStack = new Stack();
        forwardStack = new Stack();
        URLCounter = 1;
        currentURL = "";
    }

    private String createURL() {
        return "http://example.com/" + URLCounter++;
    }

    public void addLink() {
        String newURL = createURL();

        if (currentURL.isEmpty()) {
            currentURL = newURL;
            print();
            return;
        }

        backwardStack.push(currentURL);
        currentURL = newURL;
        print();
    }

    public void goBack() {
        if (backwardStack.isEmpty() || currentURL.isEmpty()) {
            System.out.println("Cannot go back! No more links in Backward Stack");
            return;
        }

        forwardStack.push(currentURL);
        currentURL = backwardStack.pop();
        print();
    }

    public void goForward() {
        if (forwardStack.isEmpty() || currentURL.isEmpty()) {
            System.out.println("Cannot go forward! No more links in Forward Stack");
            return;
        }

        backwardStack.push(currentURL);
        currentURL = forwardStack.pop();
        print();
    }

    public void print() {
        backwardStack.print();
        System.out.println("-> " + currentURL);
        forwardStack.print();
    }
}
