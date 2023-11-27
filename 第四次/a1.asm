;a1.asm
public printB
datas segment
datas ends

stacks segment stack
stacks ends
codes segment
    assume cs:codes,ds:datas,ss:stacks
start:
		
    mov ax, datas
    mov ds, ax
	

	;mov ax , 4c00h                  ;多余的
	;int 21h 
	
printB proc far

    mov ah, 2   ; 设置AH寄存器为2，表示显示字符
    mov dl, 'b'

    int 21h      ; 调用DOS中断 21h 来显示字符
	ret
printB endp
codes ends
end start
