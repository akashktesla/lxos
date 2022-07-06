.set MAGIC, 0x1badb002
.set FLAGS, (1<<0 | 1<<1)
.set CHECKSUM , -(MAGIC + FLAGS)

.section .text
.extern kernelMain
.global loader

.section .multiboot
    .long MAGIC
    .long FLAGS
    .long CHECKSUM


loader:
    mov $kernelMain, %esp
    call kernelMain


_stop:
    cli
    hlt
    jmp _stop

.section .bss
kernel_stack:
    .space 2*1024*1024
