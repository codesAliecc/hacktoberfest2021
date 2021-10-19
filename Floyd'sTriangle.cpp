#include<iostream>
using namespace std;

int main(){
    int row, j=1;
    cout << "Enter number of rows -";
    cin >> row;
    for(int i=1;i<=row;i++){
        for(int k=1; k<=i; k++){
            cout << j << " ";
            j++;
        }
        cout << endl;
    }
    return 0;
}
