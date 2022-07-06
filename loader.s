-section .text
-extern kernelMain
-global loader

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
