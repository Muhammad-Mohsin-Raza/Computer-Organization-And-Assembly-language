[org 0x100]

jmp start
data : dw 4717,0
calc:
    push bp
  
   
    pusha
    ;mov cx,[bp+4]
   ;MOV AX,[bp+4]
   mov ax,[data]
   mov cx,[data]
    mov bx,10

    loop:
    div bx
    ;push dx
    sub cx,dx 
    ;xor ax,ax
    mov ax,cx
    ;mov bh,10
    div bx

    ;cmp ax,0
    ;jne loop

    
start:
   mov ax,data
   ;push ax
   call calc

mov ax,0x4c00
int 21h