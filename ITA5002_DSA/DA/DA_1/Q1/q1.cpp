#include <iostream>
#include <string.h>
#include <limits.h>

using namespace std;

class Stack
{
private:
    int array[100], n, top;

public:
    Stack()
    {
        top = -1;
        n = 100;
    }

    int size()
    {
        return top + 1;
    }

    bool isFull()
    {
        return top >= n - 1;
    }

    bool isEmpty()
    {
        return top <= -1;
    }

    int push(int value)
    {
        if (isFull())
        {
            return INT_MIN;
        }

        array[++top] = value;

        return value;
    }

    int pop()
    {
        if (isEmpty())
        {
            return INT_MIN;
        }

        return array[top--];
    }

    int peek()
    {
        if (isEmpty())
        {
            return INT_MIN;
        }

        return array[top];
    }
};

int main()
{
    Stack parityStack;

    string code;
    cout << "Enter the binary code : ";
    cin >> code;

    for (int i = 0; i < code.length(); i++)
    {
        if (code[i] == '1')
        {
            parityStack.push(code[i]);

            if (parityStack.size() == 2)
            {
                parityStack.pop();
                parityStack.pop();
            }
        }
    }

    if (parityStack.isEmpty())
    {
        cout << "Even Parity";
    }
    else
    {
        cout << "Odd Parity";
    }

    return 0;
}