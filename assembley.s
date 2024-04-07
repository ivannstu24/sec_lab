section .data
    numbers db 33, 232, 11, 123
    len equ $ - numbers
    newline db 0x0A
    newline_len equ $ - newline
    sum_msg db "Sum of numbers divisible by 3: ", 0
    sum_msg_len equ $ - sum_msg

section .bss
    sum resq 1  ; выделяем место для хранения суммы

section .text
    global _start

_start:
    mov rsi, numbers    ; rsi указывает на начало массива чисел
    mov rcx, len        ; rcx содержит количество чисел в массиве

    xor rax, rax        ; rax будет использоваться для суммы
    xor rbx, rbx        ; rbx будет использоваться для проверки деления на 3

sum_loop:
    movzx rbx, byte [rsi]   ; загрузка текущего числа в rbx
    inc rsi                 ; переход к следующему числу
    test rbx, 0x01          ; проверка на нечетность числа
    jnz skip_if_odd         ; если число нечетное, пропустить

    mov rdx, 0              ; сброс регистра rdx перед делением
    mov rdi, 3              ; делитель
    div rdi                 ; деление rbx на 3
    test rdx, rdx           ; проверка остатка от деления
    jnz skip_if_not_divisible_by_3  ; если остаток не равен 0, пропустить

    add rax, rbx            ; если число делится на 3, добавить его к сумме

skip_if_not_divisible_by_3:
skip_if_odd:
    loop sum_loop           ; повторять для остальных чисел

    ; сохраняем сумму в переменной sum
    mov [sum], rax

    ; вывод сообщения о сумме
    mov rax, 1              ; номер системного вызова для write
    mov rdi, 1              ; файловый дескриптор stdout
    mov rsi, sum_msg        ; адрес строки для вывода
    mov rdx, sum_msg_len    ; длина строки
    syscall                 ; вызов системного вызова

    ; вывод суммы
    mov rax, 1              ; номер системного вызова для write
    mov rdi, 1              ; файловый дескриптор stdout
    mov rsi, sum            ; адрес переменной с суммой
    mov rdx, 8              ; длина суммы (64 бита)
    syscall                 ; вызов системного вызова

    ; вывод новой строки
    mov rax, 1              ; номер системного вызова для write
    mov rdi, 1              ; файловый дескриптор stdout
    mov rsi, newline        ; адрес новой строки
    mov rdx, 1              ; длина новой строки
    syscall                 ; вызов системного вызова

    ; завершение программы
    mov rax, 60             ; код завершения системного вызова
    xor rdi, rdi            ; передача 0 в качестве кода завершения
    syscall
