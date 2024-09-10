#include <iostream>
#include <string>
#include <array>
using namespace std;

void vars() {
    // Add Step 2 code below this line.
    const unsigned int BIG_NUMBER = 10000000;
    string name = "Paige Schotanus";
    char last_letter = 'S';
    double pi = 3.1415;
    bool wrong = false;
    long num = 0;

    // Add Step 3 code below this line.
    cout << &BIG_NUMBER << endl << &name << endl << &last_letter << endl << &pi << endl << &wrong << endl << &num << endl;

}

// Step 4
void ns() {
    int number = 37;
    cout << dec << number << endl;
    cout << oct << number << endl;
    cout << hex << number << endl;

}

// Step 5
void arrays() {
    float anarray[20];
    cout << dec << sizeof(anarray) << endl;

}

// Step 6
void dec() {
    unsigned int a = 0;
    --a;
    cout << a << endl; 
    //This oputputs a very large number because it cannot be negative, so it goes back up the highest nmber it can be. 
}
