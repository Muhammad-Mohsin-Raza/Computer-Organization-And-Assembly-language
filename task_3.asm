[org 0x100]
jmp start

add2:

push bp
mov bp,sp

sub sp,2
push ax
push bx
mov ax,[bp+4]
mov bx,[bp+6]
add ax,bx
add ax,[bp+8]

mov [bp-2],ax

pop bx
pop ax

add1:

push bp
mov bp,sp

sub sp,2    ; local varaibale

push ax
push bx

mov ax,[bp+4]
mov bx,[bp+6]

add ax,bx

mov [bp-2],ax

;pop bx
;pop ax

call add2


mov sp,bp
pop bp

ret 4
start:

mov ax,12
mov bx,12
push bp
mov bp,sp

sub sp,2

push ax
push bx
call add1

mov ax,0x4c00
int 0x21