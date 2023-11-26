datas segment
datas ends

stacks segment stack
stacks ends

codes segment
    assume cs:codes,ds:datas,ss:stacks
start:
    mov ax, datas
    mov ds, ax
	
x1  MACRO
	mov ah, 2   ; 设置AH寄存器为2，表示显示字符
    mov dl, 'a'   
	
    int 21h      ; 调用DOS中断 21h 来显示字符
	ENDM
	
	x1
	x1
	x1
	mov ax , 4c00h                  ;返回DOS
	int 21h 	

;先使用后定义则出错
codes ends
end start