%define sys_exit 1
%define sys_fork 1
%define sys_read 3
%define sys_write 4

%define exit_success 0
%define exit_failure 1

%define stdin 0
%define stdout 1

%define kernel 0x80

section .text
    global main             ; must be declared for using gcc

main:                       ; tell linker entry point
    mov ecx, len
    mov esi, s1
    mov edi, s2

    cld
    rep movsb

    mov edx,20              ; message length
    mov ecx,s2              ; message to write
    mov ebx,stdout          ; file descriptor (stdout)
    mov eax,sys_write       ; system call number (sys_write)
    int kernel              ; call kernel

    mov ebx, exit_success
    mov eax,sys_exit        ; system call number (sys_exit)
    int kernel              ; call kernel

section .data               ; initialized data
    s1 db 'Hello, world!',0 ; string 1
    len equ $-s1

section .bss                ; initialized data
    s2 resb 20              ; destination