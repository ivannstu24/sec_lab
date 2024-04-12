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
    
    ; Read the number of elements
    mov rdi, fmt_read
    mov rsi, n
    xor rax, rax
    call scanf

_n_loop:
    ; Decrement the counter
    dec dword [n]

    ; Read the number
    mov rdi, fmt_read
    mov rsi, number
    xor rax, rax
    call scanf

    ; Check if the number is divisible by 3
    mov eax, [number]
    xor edx, edx
    mov ecx, 3
    div ecx
    cmp edx, 0
    jne _continue_loop ; If not divisible by 3, skip to the next number

    ; If divisible by 3, calculate the sum of its digits
    mov eax, [number]
    xor ecx, ecx ; Clear the sum register

_sum_digits:
    ; Extract the last digit
    xor edx, edx
    mov esi, 10
    div esi

    ; Add the digit to the sum
    add ecx, edx

    ; Check if there are more digits
    cmp eax, 0
    jne _sum_digits

    ; Add the sum of digits to the count
    add [count], ecx

_continue_loop:
    ; Check if we have processed all numbers
    mov eax, [n]
    cmp eax, 0
    jne _n_loop

    ; Print the count
    mov rdi, fmt_write
    mov esi, [count]
    xor rax, rax
    call printf

    ; Exit the program
    mov eax, 60
    xor edi, edi
    syscall
