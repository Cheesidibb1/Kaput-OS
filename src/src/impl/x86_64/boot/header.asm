section .multiboot_header
header_start:
    ; magic number
    dd 0xea85250d6 ; multiboot 2
    ;archetecture
    dd 0 ; protected mode i386
    dd header_end - header_start
    dd 0x100000000 - (0xea85250d6 + 0 + (header_end - header_start))

    ; end tag
    dw 0
    dw 0 
    dd 8
header_end: