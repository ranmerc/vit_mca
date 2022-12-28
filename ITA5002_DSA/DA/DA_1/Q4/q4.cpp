#include <iostream>

class Node
{
public:
    int value;
    Node *next;

    Node(int value)
    {
        this->value = value;
        this->next = nullptr;
    }
};

class SLList
{
public:
    Node *head;

    SLList()
    {
        head = nullptr;
    }

    bool isEmpty()
    {
        return head == nullptr;
    }

    void insert(int value)
    {
        Node *newNode = new Node(value);

        if (head == nullptr)
        {
            head = newNode;
        }
        else
        {
            Node *itr = head;

            while (itr->next != nullptr)
            {
                itr = itr->next;
            }

            itr->next = newNode;
        }
    }

    void print()
    {
        Node *itr = head;

        while (itr != nullptr)
        {
            std::cout << itr->value << " ";
            itr = itr->next;
        }
    }
};

SLList mergeLists(Node *h1, Node *h2)
{
    SLList listToReturn;

    while (h1 != nullptr && h2 != nullptr)
    {
        if (h1->value < h2->value)
        {
            listToReturn.insert(h1->value);
            h1 = h1->next;
        }
        else if (h1->value > h2->value)
        {
            listToReturn.insert(h2->value);
            h2 = h2->next;
        }
        else
        {
            listToReturn.insert(h1->value);
            h1 = h1->next;
            h2 = h2->next;
        }
    }

    while (h1 != nullptr)
    {
        listToReturn.insert(h1->value);
        h1 = h1->next;
    }

    while (h2 != nullptr)
    {
        listToReturn.insert(h2->value);
        h2 = h2->next;
    }

    return listToReturn;
}

int main()
{
    SLList l1, l2;
    int s1, s2;

    std::cout << "Enter size of first list : ";
    std::cin >> s1;

    for (int i = 0; i < s1; i++)
    {
        int element;
        std::cout << "Enter " << i + 1 << " element : ";
        std::cin >> element;
        l1.insert(element);
    }

    std::cout << "Enter size of second list : ";
    std::cin >> s2;

    for (int i = 0; i < s2; i++)
    {
        int element;
        std::cout << "Enter " << i + 1 << " element : ";
        std::cin >> element;
        l2.insert(element);
    }

    std::cout << std::endl
              << "First list is : " << std::endl;
    l1.print();

    std::cout << std::endl
              << "Second list is : " << std::endl;
    l2.print();

    SLList merged = mergeLists(l1.head, l2.head);

    std::cout << std::endl
              << "Merged list is : " << std::endl;
    merged.print();

    return 0;
}