[org 0x0100]


outer_loop:

        xor ax,ax
        mov ax,[num1+bx]
        mov bx,1
        mov dx,0


            iter_even:

            ;shr ax,1

            mov cx,ax
            and ax,bx       
            mov dx,ax       ;carry will store in  ax
            xor cx,bx       ; sum will store in cx

            mov ax,cx
            shl dx,1
            mov bx,dx
            
            cmp bx,0
            jne iter_even

            mov bx,[num2]
            mov [num1+bx],cx

            mov bx,[num2]
            add bx,2
            mov [num2],bx    

            xor ax,ax
            mov ax,[num1+bx]
            mov bx,-1
            
            mov dx,0

        iter_sub:

            mov cx,ax
            and ax,bx       
            mov dx,ax       ;carry will store in  ax
            xor cx,bx       ; sum will store in cx

            mov ax,cx
            shl dx,1
            mov bx,dx

            cmp bx,0
            jne iter_sub

            mov bx,[num2]
            mov [num1+bx],cx

            mov bx,[num2]
            add bx,2
            mov [num2],bx

cmp bx,18
jbe outer_loop



mov ax,0x4c00
int 0x21

num1 : dw 23, 65, 12, 6, 45, 38, 44, 9, 87, 100
num2 : dw 0