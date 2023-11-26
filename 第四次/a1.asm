;a1.asm
datas segment
datas ends

stacks segment stack
stacks ends
codes segment
    assume cs:codes,ds:datas,ss:stacks


printB proc

    mov ah, 2   ; 设置AH寄存器为2，表示显示字符
    mov dl, 'b'

    int 21h      ; 调用DOS中断 21h 来显示字符
	ret
printB endp
codes ends
