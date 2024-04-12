global main

section .data
    n: dq 0                   ; Указатель на число
    number: dq 0              ; Текущее число для разбора
    count: dq 0               ; Сумма цифр, делящихся на 3
    fmt_read: db "%lld", 0    ; Формат строки для чтения числа
    fmt_write: db "%lld\n", 0 ; Формат строки для вывода суммы

section .text
main:
    push rbp
    mov rbp, rsp

    mov rdi, fmt_read
    mov rsi, qword [n]
    xor rax, rax
    call scanf

_n_loop:
    mov rdi, fmt_read
    mov rsi, qword [number]
    xor rax, rax
    call scanf

    mov rax, qword [number]
    mov rcx, 3
    xor rdx, rdx
    div rcx
    cmp rdx, 0
    je _is_divide_by_3

    mov rax, qword [n]
    cmp rax, 0
    je _print_func
    jmp _n_loop

_is_divide_by_3:
    mov rax, qword [number]
    mov rcx, qword [count]
    add rcx, rax
    mov [count], rcx
    mov rax, qword [n]
    cmp rax, 0
    je _print_func
    jmp _n_loop

_print_func:
    mov rdi, fmt_write
    mov rsi, qword [count]
    xor rax, rax
    call printf

    mov rax, 60
    xor rdi, rdi
    syscall
