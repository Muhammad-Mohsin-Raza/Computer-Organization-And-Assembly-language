

; result will store in dx


[org 0x100]

jmp start

dvi:
 push bp
    mov bp,sp
    sub sp,2
    mov word[bp-2],0
   
    push ax
    push bx
    mov ax,[bp+6]
    mov bx,[bp+4]
    div bx
    mov dx, ax
    pop bx
    pop ax
    mov sp,bp
    pop bp
    ret 4


mul:
    push bp
    mov bp,sp
    sub sp,2
    mov word[bp-2],0
   
    push bx
    push ax

    mov ax,[bp+8]
    mov bx,[bp+6]
    mul bx
    mov bx,[bp+4]
    mov word[bp-2],ax
    push word[bp-2]
    push bx
    call dvi


    
    pop bx
    pop ax
    mov sp,bp
    pop bp
    ret 6
    






add:
    push bp
    mov bp,sp
    sub sp,2
    mov word[bp-2],0
    push cx
    push bx

    mov bx,[bp+4]
    mov cx,[bp+6]
    add cx,bx
    add [bp-2],cx
    
    push word[bp-2]
    push word[bp+6]
    push word[bp+4]
    
        call mul  ; calling 


        pop bx
        pop cx
        mov sp,bp
        pop bp
        ret 4


start:

    push 12
    push 12
    mov cx,0
    call add

mov ax,0x4c00
int 21h