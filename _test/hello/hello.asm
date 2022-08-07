section .text 
    global _start

section .data
    msg: db "valzkai aeeeee", 10 ;msg define bite "string", 10
    len: equ $-msg ;len define bite "string"

_start:
    mov edx, len ;defining lenth to the data register, it handles all the loops and stuff
    mov ecx, msg ;defining the msg to the control register
    mov ebx, 1 ; system out, 
    mov eax, 4 ; system call number for systerm write
    int 0x80 ; system call
    
    mov eax, 1 ; exit
    int 0x80 ; system call


