#include <iostream>
#define m 3
#define n m * 3

using namespace std;

int stack[n];
int t[3] = {-1, m - 1, 2 * m - 1};
int limits[3] = {m, 2 * m, 3 * m};
int start[3] = {0, m, 2 * m};

void push(int sno, int val)
{
    if (t[sno] >= limits[sno] - 1)
        cout << "Stack Overflow" << endl;
    else
    {
        t[sno]++;
        stack[t[sno]] = val;
    }
}

void pop(int sno)
{
    if (t[sno] < start[sno])
        cout << "Stack Underflow" << endl;
    else
    {
        cout << "The popped element is " << stack[t[sno]] << endl;
        stack[t[sno]] = 0;
        t[sno]--;
    }
}

void display()
{
    cout << "Stack elements are:";

    for (int i = m - 1; i >= 0; i--)
        cout << stack[i] << " ";
    for (int i = m; i <= 2 * m - 1; i++)
        cout << stack[i] << " ";
    for (int i = 2 * m; i <= 3 * m - 1; i++)
        cout << stack[i] << " ";

    cout << endl;
}

int main()
{
    int ch, val, sno;
    cout << "1) Push in stack" << endl;
    cout << "2) Pop from stack" << endl;
    cout << "3) Display stack" << endl;
    cout << "4) Check if empty" << endl;
    cout << "5) Check if full" << endl;
    cout << "6) Exit" << endl;
    do
    {
        cout << "Enter choice: " << endl;
        cin >> ch;
        switch (ch)
        {
        case 1:
        {
            cout << "Enter value to be pushed:" << endl;
            cin >> val;
            cout << "Enter stack no:" << endl;
            cin >> sno;
            if (sno > n / m)
            {
                printf("Invalid stack number\n");
                break;
            }
            push(sno - 1, val);
            break;
        }
        case 2:
        {
            cout << "Enter stack no:" << endl;
            cin >> sno;
            if (sno > n / m)
            {
                printf("Invalid stack number\n");
                break;
            }
            pop(sno - 1);
            break;
        }
        case 3:
        {
            display();
            break;
        }
        case 4:
        {
            cout << "Enter stack no : " << endl;
            int i;
            cin >> i;
            isEmpty(i);
            break;
        }
        case 5:
        {
            cout << "Enter stack no : " << endl;
            int i;
            cin >> i;
            isFull(i);
            break;
        }
        case 6:
        {
            cout << "Exit" << endl;
            break;
        }
        default:
        {
            cout << "Invalid Choice" << endl;
        }
        }
    } while (ch != 4);
    return 0;
}
