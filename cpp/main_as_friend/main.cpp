#include <iostream>
using namespace std;

// demonstrates using main() as a friend function to access private members

class mainasfriend {
    int a, b;
public:
    mainasfriend(int x, int y) {
        a = x;
        b = y;
    }

    friend int main();
};

int main() {
    mainasfriend ob(5, 7);
    cout << ob.a + ob.b;
    return 0;
}
