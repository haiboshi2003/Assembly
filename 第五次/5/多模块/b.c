// b.c
#include <stdio.h>

extern int add(int a, int b);

int main() {
    int i;
    i = add(5, 6);
    printf("%d\n", i);
    return 0;
}
