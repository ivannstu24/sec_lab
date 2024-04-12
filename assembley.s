global main

section .data
    n: dd 0
    number: dd 0
    count: dd 0
    fmt_read: db "%d", 0
    fmt_write: db "%d", 10, 0

default rel
extern printf, scanf

section .text
main:
    push rbp
    mov rbp, rsp
    
    mov rdi, fmt_read
    mov rsi, n
    xor rax, rax
    call scanf

_n_loop:
    dec byte [n]

    mov rdi, fmt_read
    mov rsi, number
    xor rax, rax
    call scanf

    mov eax, [number]
    mov r8, 3
    xor rdx, rdx
    div r8
    cmp rdx, 0
    je _is_divide_by_3

    mov eax, [n]
    cmp eax, 0
    je _print_func
    jmp _n_loop

_is_divide_by_3:
    mov eax, [number]
    add r8d, eax
    mov [count], r8d
    mov eax, [n]
    cmp eax, 0
    je _print_func
    jmp _n_loop

_print_func:
    mov rdi, fmt_write
    mov esi, [count]
    xor rax, rax
    call printf

    mov eax, 60
    xor rdi, rdi
    syscall
