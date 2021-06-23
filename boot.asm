mov ah, 0x0e ; tty mode
mov al, 'f'
int 0x10
mov al, 'u'
int 0x10
mov al, 'c'
int 0x10
;int 0x10 ; 'l' is still on al, remember?
mov al, 'k'
int 0x10

jmp $ ; jump to current address = infinite loop

; padding and magic number
times 510 - ($-$$) db 0
dw 0xaa55