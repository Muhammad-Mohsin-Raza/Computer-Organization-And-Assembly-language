[org 0x0100] 

mov ax,0

mov bx,0
mov cx,4
mov ax,[num1]
mov dx,[num1+10]

iter:                       ; find max number in 0-4 index
    add bx,2
    cmp ax,[num1+bx]

    jb swap
    
    sub cx,1
    jne iter
    je counter

 
    
swap:                       ; change value of ax
    mov ax,[num1+bx]
    sub cx,1
    jne iter

counter:                    ; change value of cx
    mov cx,5
    

loop:                       ; find min num from 5-9 index
   add bx,2
   cmp dx,[num1+bx+2]
   ja swap1
   sub cx,1
   jne loop
   je sum

swap1:                      ; change value of dx
    mov dx,[num1+bx+2]
    sub cx,1
    jne loop

sum:                        ; find sum of max and min value
    
    add ax,dx

mov ax, 0x4c00 
int 0x21 

num1 : dw 1,1,1,9,2,6,4,1,7,4,3
result :dw 0