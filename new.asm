[org 0x100]

    xor ax,ax
    mov al,1
    mov cl,0
    mov dl,0
    mov bx,0

    work:
        mov dh,byte[data+bx]
        TEST dh,al
        je even

    ; for odd
add bx,1
add ch,1    ;no. of odd will store in ch
cmp bx,7
jnz work

    mov ax,0x4c00
    int 0x21


    even:
        add bx,1
        add cl,1  ; no. of even will store in cl
        
        cmp bx,7
        jnz work
        
    mov ax,0x4c00
    int 0x21

 data :db 2, 3, 6, 4, 8, 67, 31
