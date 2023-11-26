datas segment
	prompt0 db "WHAT IS THE DAY (MM/DD/YY)?$"
	buffer db "?"
datas ends

stacks segment stack
    ; 此处输入堆栈段代码
    db 128 dup (0)

stacks ends

codes segment
    assume cs:codes,ds:datas,ss:stacks
start:
    mov ax, datas
    mov ds, ax
	
	
	mov ah, 09h           ;打印提示信息
    lea dx, [prompt0]
    int 21h
	call tab
	call xiangling
	
	call getnum
	
    ; 显示输入的字符串

	call tab
	mov si, 2
	call disp
	call disp2
	mov si, 5
	call disp
	call disp2
	mov si,8
	call disp
	
	
	


	


exit:	
	mov ax, 4c00h          ;带返回码结束
    int 21h

	
xiangling proc
	MOV DL, 07H 
	MOV AH, 2 
	INT 21H
	ret
xiangling endp

disp proc

	mov ah, 2   ; 设置AH寄存器为2，表示显示字符
    mov dl, buffer[si]  
	
    int 21h      ; 调用DOS中断 21h 来显示字符
	
	
	add si,1
	mov ah, 2   ; 设置AH寄存器为2，表示显示字符
    mov dl, buffer[si]  
	
    int 21h      ; 调用DOS中断 21h 来显示字符
	
	
	ret
disp endp

disp2 proc

	mov ah, 2   ; 设置AH寄存器为2，表示显示字符
    mov dl, '-'   
	
    int 21h      ; 调用DOS中断 21h 来显示字符
	ret
disp2 endp

getnum proc
	;mov al, 00h
	;mov ah, 01h
	;int 21h
	
	;mov ah, 2   ; 设置AH寄存器为2，表示显示字符
    ;mov dl, al   
	
    ;int 21h      ; 调用DOS中断 21h 来显示字符

    ; 读取字符串
    mov ah, 0Ah
    lea dx, [buffer]
    int 21h

	ret


getnum endp

tab proc
    mov ah, 02h
	mov dl, 10  ; 10 表示换行字符
	int 21h     ; 再次调用DOS中断 21h 来显示字符
	
	
	mov dl, 13  ; 13 表示回车字符
	int 21h     ; 调用DOS中断 21h 来显示字符
	ret
tab endp

codes ends
end start
