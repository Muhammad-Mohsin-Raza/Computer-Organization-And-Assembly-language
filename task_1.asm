[org 0x100]


    mov ax,[data]
    mov cx,0
    mov bx,0
loop:
    shr ax,1
    jnc next
    inc bh

next:
    
    inc cx
    cmp cx,4
    jne loop
mov cx,0
loop2:
    shr ax,1
    jnc next2
    inc bl

    next2:
     inc cx
    cmp cx,4
    jne loop2

    cmp bh,bl
    jne final
        mov ax,1
    final:
    mov ax,0


mov ax,0x4c00
int 21h

data :dw 24
new :dw 0