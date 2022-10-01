#include <iostream>
using namespace std;
#define MIN(a,b) (a<b ? a : b)
int main ()
{
    int i, j;
    i = 7;
    j = 5;
    cout <<"The MIN:" << MIN(i, j) << endl;
    return 0;
}
