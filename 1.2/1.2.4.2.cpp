//不含#define DEBUG
#include <iostream>
using namespace std;
int main ()
{
#ifdef DEBUG
    cout<<111<<endl;
#endif
    return 0;
}  
