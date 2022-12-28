#include <iostream>

using namespace std;

class Node
{
public:
    int value;
    Node *prev;

    Node(int value)
    {
        this->value = value;
        this->prev = nullptr;
    }
};

class LinkedListStack
{
private:
    Node *top;

public:
    LinkedListStack()
    {
        top = nullptr;
    }

    bool isEmpty()
    {
        return top == nullptr;
    }

    void push(int value)
    {
        Node *newNode = new Node(value);

        if (top != nullptr)
        {
            newNode->prev = top;
        }

        top = newNode;
    }

    int pop()
    {
        if (isEmpty())
        {
            return INT_MIN;
        }

        int popped = top->value;
        Node *toDelete = top;
        top = top->prev;
        delete toDelete;

        return popped;
    }

    int peek()
    {
        if (isEmpty())
        {
            return INT_MIN;
        }

        return top->value;
    }

    void print()
    {
        Node *itr = top;

        cout << endl
             << "Stack: " << endl;

        if (isEmpty())
        {
            cout << endl
                 << "Empty";
        }

        while (itr != nullptr)
        {
            cout << itr->value << endl;
            itr = itr->prev;
        }
    }
};