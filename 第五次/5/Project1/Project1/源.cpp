#include <stdio.h>

int main()
{
    int test = 100;
    __asm
    {
        mov  eax, test //��test��ֵд��eax�Ĵ���
        dec  eax  //�Ĵ�����ֵ��һ
        mov  test, eax //��eax��ֵд��test������

    }
    printf("test:%d\n", test); //test Ϊ0
    return 0;
}