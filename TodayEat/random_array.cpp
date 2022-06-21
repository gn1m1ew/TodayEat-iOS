#include <iostream>
#include <cstdlib>

using namespace std;

void random_select(){

    string arr[100];
    string str;
    int n;

    cout << "How many items do you want to enter? " << endl;
    cin >> n;

    for (int i = 0; i < n; i++){
        cout << "Enter the food that you want" <<  endl;

        cin >> str;

        arr[i] = str;
    }

    int random_num = rand()%n + 1;

    cout << arr[random_num] << endl;

}

int main(){
    random_select();

    return 0;
}