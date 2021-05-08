[org 0x0100] 

xor ax,ax
mov ah,[num]
mov ch,0
mov cl,0
loop:
    SHR ah,1
    add ch,1        ;no. of shr will store in ch
    cmp ah,0
    jne loop

mov ah,[num]
iter:
    
    shl ah,1
    add cl,1       ;no. of shr will store in cl
    cmp ah,0
    jne iter

cmp ch,cl
jnb great
mov bh,ch
mov ax, 0x4c00 
int 0x21 
great:
    mov bh,cl
    mov ax, 0x4c00 
    int 0x21 


num : db 4