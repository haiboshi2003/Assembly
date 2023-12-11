#include <stdio.h>

int main() {
    int a = 5, b = 10, result;

    // 使用嵌入式汇编
    asm(
        "mov %1, %0;"
        "add %2, %0;"
        : "=r"(result)
        : "r"(a), "r"(b)
    );

    printf("Result: %d\n", result);

    return 0;
}