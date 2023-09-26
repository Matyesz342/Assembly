#include <stdio.h>
int n  = 6;
int f;
int main(int argc, char *argv[]) {
    f = 1;
    while (n >1)
    {
        f=f*n--;
        return f;
    }
    

    return 0;
}