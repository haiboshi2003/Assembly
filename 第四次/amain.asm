;main

include a1.asm
include a2.asm

datas segment
datas ends

stacks segment stack
stacks ends

codes segment
    assume cs:codes,ds:datas,ss:stacks
start:
	
    mov ax, datas
    mov ds, ax
	
	
	printA          ;调用a2.asm里的宏
	call printB


	mov ax , 4c00h                  ;返回DOS
	int 21h 	





	
codes ends
end start