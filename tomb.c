#include <stdio.h>

int main(int argc, char *argv[]) {
    int t1[13];
    t1[0] = 0;
    t1[1] = 1;
    for (int i = 2; i < 13; i++)
    {
        t1[i] = t1[i - 1] + t1[i - 2];
    }
    return t1[12];
}