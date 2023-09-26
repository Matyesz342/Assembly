#include <stdio.h>

int main(int argc, char *argv[]) {
    int a = 5;
    int i = 1;
    int count = 1;
    while (i <= a)
    {
        count = count * i;
        i++;  
    }
    printf("%d\n", count);
    return 0;
}