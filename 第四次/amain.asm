;main
extrn printA:far
extrn printB:far
datas segment
datas ends

stacks segment stack
stacks ends

codes segment
    assume cs:codes,ds:datas,ss:stacks
start:
	
    mov ax, datas
    mov ds, ax
	
	
	call printA        
	call printB


	mov ax , 4c00h                  ;返回DOS
	int 21h 	





	
codes ends
end start