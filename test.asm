
mov bx, 0
mov ah, 0x0e
mov al, 65
int 0x10

loop:
     
    inc al
    int 0x10
    inc bx
    cmp bx, 5
    je exit
    jmp loop

exit: 
    jmp $


jmp $
times 510-($-$$) db 0

dw 0xaa55
    