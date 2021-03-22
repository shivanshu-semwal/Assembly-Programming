%define sys_exit 1
%define sys_fork 2
%define sys_read 3
%define sys_write 4

%define stdout 1

%define kernel 0x80

%define exit_success 0
%define exit_failure 1

section .text
    global main
    
main:
    mov ecx, 9
    mov eax, '1'
    
l1:
    mov [num], eax
    mov eax, sys_write
    mov ebx, stdout

    push ecx
        mov ecx, num
        mov edx, 1
        int kernel
        mov eax, [num]
        inc eax
    pop ecx

loop l1

    mov eax, sys_write
    mov ebx, stdout
    mov ecx, 0xa
    mov edx, 2
    int kernel

    mov eax, sys_exit
    mov ebx, exit_success
    int kernel

section .bss
    num resb 1
