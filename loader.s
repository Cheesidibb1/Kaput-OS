.section .text
.exterm kernelMain
.global loader

loader:
	mov $kernel_stack, %esp




.section .bss

kernel_stack:
