// Ô´ÎÄ¼ştest.c 
#include <stdio.h> 

extern int Add(int, int);
int main(int argc, char** argv)
{
    int b = 1, c = 2;
    int a = Add(b, c);
    printf("res =  %d\n", a);
    return 0;
}