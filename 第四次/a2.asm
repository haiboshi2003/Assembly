;a2.asm
printA MACRO
    mov ah, 2   ; 设置AH寄存器为2，表示显示字符
    mov dl, 'a'   
    
    int 21h      ; 调用DOS中断 21h 来显示字符
ENDM
