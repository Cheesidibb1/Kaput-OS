[org 0x7c00]
mov ah, 0x0e
mov al, [var]
int 0x10
jmp $
loop:
    inc al
    int 0x10
    cmp al, 'Z' + 1
    je exit
    jmp loop

printString:
    mov al, [bx]
    cmp al, 0
    je end
    int 0x10
    inc bx
    jmp printString
end:
    jmp $
var:
    db "cheese tastes great!", 0

exit:
    jmp $
times 510-($-$$) db 0
dw 0x55, 0xaa