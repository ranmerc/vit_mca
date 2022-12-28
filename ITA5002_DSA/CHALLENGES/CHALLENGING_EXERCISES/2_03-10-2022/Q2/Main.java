package Q2;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.println("Enter Expression: ");
        String expression = scan.nextLine();

        System.out.println("Prefix: " + infixToPrefix(expression));
        System.out.println("Postfix: " + infixToPostfix(expression));
    }

    public static String infixToPostfix(String expression) {
        Stack stack = new Stack(20);
        StringBuilder finalExpression = new StringBuilder();
        expression = "(" + expression + ")";

        for (int i = 0; i < expression.length(); i++) {
            if (isOperator(expression.charAt(i))) {
                while (!stack.isEmpty() && stack.peek() != '('
                        && operatorPrecedence(stack.peek()) >= operatorPrecedence(expression.charAt(i))) {
                    finalExpression.append(stack.pop());
                }

                if (!stack.isEmpty() && stack.peek() == '(') {
                    stack.pop();
                }

                stack.push(expression.charAt(i));
            } else if (expression.charAt(i) == '(') {
                stack.push('(');
            } else if (expression.charAt(i) == ')') {
                while (!stack.isEmpty() && stack.peek() != '(') {
                    finalExpression.append(stack.pop());
                }
                stack.pop();
            } else {
                finalExpression.append(expression.charAt(i));
            }
        }

        return finalExpression.toString();
    }

    public static String infixToPrefix(String expression) {
        expression = "(" + expression + ")";
        return reverseString(infixToPostfix(reverseString(expression)));
    }

    public static String reverseString(String string) {
        StringBuilder sb = new StringBuilder();

        for (int i = string.length() - 1; i >= 0; i--) {
            if (string.charAt(i) == '(') {
                sb.append(')');
            } else if (string.charAt(i) == ')') {
                sb.append('(');
            } else {
                sb.append(string.charAt(i));
            }
        }

        return sb.toString();
    }

    public static int operatorPrecedence(char x) {
        if (x == '+' || x == '-') {
            return 1;
        }
        if (x == '/' || x == '*') {
            return 2;
        }
        if (x == '^') {
            return 3;
        }

        return 0;
    }

    public static boolean isOperator(char x) {
        if (x == '+' || x == '-' || x == '/' || x == '*' || x == '^') {
            return true;
        }

        return false;
    }
}
