[org 0x100]

    xor ax,ax
    mov ax,25      ; Dividend
    mov bl,2       ; Divisior
    div bl 
    mov [output],ax  ; 25/2 ans will store in [output]
    
    xor ax,ax
    mov ax,100          ; Dividend
    mov bl,5            ; Divisior
    div bl
    mov [output+2],ax    ;100/3 ans will store in [output+2]

                    ; Multiply    

    xor ax,ax           
    mov al,50       
    mov bl,2
    mul bl             
    mov [output+4],ax   ; ans will store in [output+4] 
                                      

    xor ax,ax
    mov al,50
    mov bl,2
    mul bl              
    mov [output+6],ax    ; ans will store in [output+6] 
    
     
    mov ax,0x4c00
    int 0x21

 output :dw 0,0,0,0
