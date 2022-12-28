#include <iostream>
#include "stackUsingLinkedList.h"

int main()
{
     LinkedListStack stack;

     while (true)
     {
          cout << endl
               << endl;

          cout << endl
               << "1. Push into stack";
          cout << endl
               << "2. Pop from stack";
          cout << endl
               << "3. Peek stack";
          cout << endl
               << "4. Display stack";
          cout << endl
               << "5. Exit";
          cout << endl
               << "Enter choice: ";

          int choice;
          cin >> choice;

          switch (choice)
          {
          case 1:
               cout << endl
                    << "Enter number to push: ";
               int value;
               cin >> value;
               stack.push(value);
               cout << endl
                    << value << " pushed to the stack.";
               break;

          case 2:
          {
               int popped = stack.pop();

               if (popped != INT_MIN)
               {
                    cout << endl
                         << popped << " popped from the stack.";
               }
               else
               {
                    cout << endl
                         << "Stack Underflow!";
               }

               break;
          }

          case 3:
          {
               int peeked = stack.peek();

               if (peeked != INT_MIN)
               {
                    cout << endl
                         << "Peek: " << peeked;
               }
               else
               {
                    cout << endl
                         << "Stack Empty!";
               }

               break;
          }

          case 4:
               stack.print();
               break;

          case 5:
               return 0;

          default:
               cout << endl
                    << "Invalid Option";
               break;
          }
     }
     return 0;
}