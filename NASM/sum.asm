; defining constants

; file descriptors
%define stdout 1
%define stdin 2

; syscalls
%define sys_write 4
%define sys_read 3
%define sys_exit 1

section .data    ; data segiment
    msg db 'Enter a number', 0ax
    msglen equ $-msg
    msg2 db 'There sum is:: '
    msglen2 equ $-msg2

section .bss     ; uniitialized data
    num resb 2
    num2 resb 2

section .text    ; code segiment
    global main

main:
    ; message to print to enter a number
    mov eax, sys_write
    mov ebx, stdout
    mov ecx, msg
    mov edx, msglen
    int 0x80

    ; reading a number
    mov eax, sys_read
    mov ebx, stdin
    mov ecx, num
    mov edx, 2
    int 0x80

    ; reading another number
    mov eax, sys_read
    mov ebx, stdin
    mov ecx, num2
    mov edx, 2
    int 0x80

    ; moving first to eax and subtracting '0' to get the actual no
    ; moving second to ebx and subtracting '0' to get actual no
    mov eax, [num]
    sub eax, '0'
    mov ebx, [num2]
    sub ebx, '0'

    ; add both numbers
    add eax, ebx ; adding both numbers
    add eax, '0' ;chaging to ascii
    
    mov [num], eax

    mov eax, sys_write
    mov ebx, stdout
    mov ecx, num
    mov edx, 1
    int 0x80

    mov ebx, 0
    mov eax, sys_exit
    int 0x80
