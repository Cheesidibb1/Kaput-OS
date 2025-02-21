mov ah, 0x0e
mov al, 'H'
int 0x10

loop:
    inc al
    int 0x10
    jmp loop

jmp $
times 510-($-$$) db 0
dw 0x55, 0xaa