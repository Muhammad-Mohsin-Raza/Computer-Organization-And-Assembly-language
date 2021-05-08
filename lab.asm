[org 0x0100]

    mov ax,0
    mov bx,0
    mov dx,0
    mov ax,[num1]
    outerloop:
        mov cx,1    ;counter

            innerloop:

                
                cmp ax,[num1+bx+2]
                
                jnz abc
                add cx,1
                cmp cx,dx
                jb abc
                mov dx,cx

            
        abc:    
            add bx,2
            cmp bx,8
            jne innerloop

    mov bx,0
    add bx,2         
    add [num1+10],bx
    mov bx,[num1+10]
    mov ax,[num1+bx]

    cmp bx,8
    jnz outerloop


  mov ax,0
    mov bx,0

    mov ax,[num1]

outerloop2:
        mov cx,1    ;counter

            innerloop2:

                
                cmp ax,[num1+bx+2]
                
                jnz abc2
                add cx,1
                cmp cx,dx
                jne abc2
                mov [num_most_occur],ax

            
        abc2:    
            add bx,2
            cmp bx,8
            jne innerloop2

    mov bx,0
    add bx,2         
    add [result],bx
    mov bx,[result]
    mov ax,[num1+bx]

    cmp bx,8
    jnz outerloop2








    
    
    mov  ax, 0x4c00
    int  0x21

num1: dw  1,1,2,2,2,0
result:dw 0

num_most_occur : dw 0
