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
    
    ; Считываем количество чисел
    mov rdi, fmt_read
    mov rsi, n
    xor rax, rax
    call scanf

_n_loop:
    ; Уменьшаем счетчик чисел
    dec dword [n]

    ; Считываем число
    mov rdi, fmt_read
    mov rsi, number
    xor rax, rax
    call scanf

    ; Инициализируем сумму цифр для текущего числа
    xor ecx, ecx
    mov eax, [number]

_digit_sum:
    ; Извлекаем последнюю цифру числа
    xor edx, edx
    mov ebx, 10
    div ebx

    ; Добавляем цифру к сумме
    add ecx, edx

    ; Проверяем, остались ли еще цифры
    cmp eax, 0
    jne _digit_sum

    ; Добавляем сумму цифр к общей сумме
    add [sum], ecx

    ; Проверяем, остались ли еще числа для обработки
    cmp dword [n], 0
    jne _n_loop

_print_func:
    ; Выводим общую сумму цифр
    mov rdi, fmt_write
    mov esi, [sum]
    xor rax, rax
    call printf

    ; Завершаем программу
    mov eax, 60
    xor rdi, rdi
    syscall
