#include <iostream>
using namespace std;

// prints number pattern using class constructor

class Pattern {
public:
    Pattern() {
        for (int i = 1; i <= 4; i++) {
            for (int j = 1; j <= i; j++) {
                cout << i;
            }
            cout << endl;
        }
    }
};

int main() {
    Pattern p;
    return 0;
}
