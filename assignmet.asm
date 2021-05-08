[org 0x100]
jmp go

data :dw 3,9,56,43,1,2,23

is_even:
    mov ax,[data+si]
    div bl
    cmp ah,0
    jnz result
    inc ch      ; no. of evens will store in ch
result:
    add si,2
    
    cmp si,14
    jne is_even
    ret

is_odd:
    mov ax,[data+si]
    div bl
    cmp ah,0
    je result1
    inc cl      ; no. of odds will store in cl
result1:
    add si,2
    
    cmp si,14
    jne is_odd
    ret


go:
xor ax,ax
mov cx,0
mov bx,0

mov bl,2
call is_even

xor ax,ax
mov si,0

call is_odd

mov ax,0x4c00
int 0x21
