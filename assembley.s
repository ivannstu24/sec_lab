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
    dec dword [n]

    mov rdi, fmt_read
    mov rsi, number
    xor rax, rax
    call scanf

    mov eax, [number]
    xor ecx, ecx ; Счетчик цифр
    xor edx, edx ; Текущая цифра

_digit_loop:
    mov ebx, 10
    div ebx ; Деление на 10 для извлечения цифры
    mov edx, 0
    cmp edx, 0
    je _next_digit
    mov eax, ecx
    mul ebx
    add eax, edx
    mov ecx, eax

_next_digit:
    cmp eax, 0
    jne _digit_loop

    ; Проверка каждой из цифр на делимость на 3
    mov eax, ecx
    xor ecx, ecx

_check_divisibility:
    mov ebx, 10
    div ebx ; Деление на 10 для получения следующей цифры
    mov edx, 0
    cmp edx, 0
    je _next_check
    mov eax, ecx
    mul ebx
    add eax, edx
    mov ecx, eax

_next_check:
    cmp eax, 0
    jne _check_divisibility

    ; Добавление к общей сумме
    add [count], ecx

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
