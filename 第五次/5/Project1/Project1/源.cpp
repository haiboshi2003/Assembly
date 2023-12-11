#include <stdio.h>

int main()
{
    int test = 100;
    __asm
    {
        mov  eax, test //把test的值写入eax寄存器
        dec  eax  //寄存器数值减一
        mov  test, eax //把eax的值写回test变量中

    }
    printf("test:%d\n", test); //test 为0
    return 0;
}