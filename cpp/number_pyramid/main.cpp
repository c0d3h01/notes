#include <iostream>
using namespace std;

// prints a simple number pyramid from 1 to 5

int main() {
    for (int i = 1; i <= 5; i++) {
        for (int j = 1; j <= i; j++) {
            cout << j << " ";
        }
        cout << endl;
    }
    return 0;
}
