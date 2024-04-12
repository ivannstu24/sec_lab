global main

section .data
    n: dd 0
    number: dd 0
    sum: dd 0
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
    dec dword [n]

    mov rdi, fmt_read
    mov rsi, number
    xor rax, rax
    call scanf

    mov eax, [number]
    xor ecx, ecx ; Сумма цифр

_digit_sum:
    xor edx, edx ; Остаток от деления
    mov ebx, 10
    div ebx ; Делим на 10, остаток в edx
    add ecx, edx ; Добавляем остаток к сумме
    cmp eax, 0
    jne _digit_sum ; Если число не равно 0, продолжаем цикл

    mov eax, [sum]
    add eax, ecx ; Добавляем сумму цифр к общей сумме
    mov [sum], eax

    mov eax, [n]
    cmp eax, 0
    je _print_func
    jmp _n_loop

_print_func:
    mov rdi, fmt_write
    mov esi, [sum]
    xor rax, rax
    call printf

    mov eax, 60
    xor rdi, rdi
    syscall
