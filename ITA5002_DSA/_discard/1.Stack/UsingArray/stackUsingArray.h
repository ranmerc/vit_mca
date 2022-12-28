#include <iostream>

using namespace std;

class ArrayStack
{
private:
    int array[100], size, top;

public:
    ArrayStack()
    {
        size = 100;
        top = -1;
    }

    bool isFull()
    {
        return top >= size - 1;
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

    void print()
    {
        cout << endl
             << "Stack: " << endl;

        if (isEmpty())
        {
            cout << endl
                 << "Empty";
        }

        int itr = top;

        while (itr >= 0)
        {
            cout << array[itr] << endl;
            itr--;
        }
    }
};