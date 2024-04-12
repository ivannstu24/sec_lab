BITS 64

section .data
    inputNumber db "Input number: ", 0
    odd db "Odd: ", 0
    endLine db 0x0a, 0
    result times 32 db 0
 

section .text
    global _start

; sum [rbp-56] qword
; countOdd [rbp-48] qword
; numCount [rbp-40] qword
; buf [rbp-32] 32 byte
_start:
    push rbp
    mov rbp, rsp
    sub rsp, 56

    mov qword [rbp-56], 0

    mov rsi, inputNumber
    mov rdx, 14
    call _write

    lea rsi, [rbp-32]
    mov rdx, 31
    call _read

    lea rdi, [rbp-32]
    call _strlen

    mov rsi, rax
    call _str_to_int ; число лежит в rax

    mov r9, rax

_loop:
    lea rsi, [rbp-32]
    mov rdx, 31
    call _read

    lea rdi, [rbp-32]
    call _strlen

    mov rsi, rax
    call _str_to_int ; число лежит в rax

    mov rdi, rax
    call _div_3_sum ; кол-во нечётных в rax
    add [rbp-56], rax

    dec r9
    cmp r9, 0
    jne _loop

    mov rdi, [rbp-56]
    mov rsi, result
    call _int_to_str

    mov rsi, result ; выводим число
    mov rdx, 32
    call _write

    mov rsi, endLine ; перенос строки
    mov rdx, 1
    call _write

    call _exit

; rdi - число
_div_3_sum:
    mov r11, rdi
    xor rcx, rcx
    mov r8, 10
_div_3_sum_loop:
    xor rdx, rdx
    mov rax, r11
    div r8 ; rdx:rax / r8 = rax, остаток в rdx

    mov r11, rax ; сохраняем всё, кроме последнего разряда в r11

    mov rax, rdx
    xor rdx, rdx

    mov r8, 3
    div r8

    cmp rdx, 0
    je _add
    jne _not_add
_add:
    inc rcx
_not_add:
    mov rax, r11

    cmp r11, 0
    jne _div_3_sum_loop
    mov rax, rcx
    ret

; rdi - int number
; rsi - str ptr
_int_to_str:
    mov rax, rdi
    mov rbx, 10

    xor rcx, rcx
_int_to_str_loop:
    xor rdx, rdx
    div rbx
    add rdx, 48
    
    mov byte [rsi+rcx], dl
    inc rcx

    cmp rax, 0
    jne _int_to_str_loop
    ret


; rdi - str ptr
; return string length
_strlen:
    xor rax, rax
    xor rbx, rbx
_strlen_loop:
    mov bl, byte [rdi + rax]
    inc rax
    cmp rbx, 0x0a
    jne _strlen_loop
    dec rax
    ret

; rdi - str ptr
; rsi - num length

; num [rbp-8] qword
; num length [rbp-16] qword
; string pointer [rbp-24] qword
_str_to_int:
    push rbp ; function prologue
    mov rbp, rsp
    sub rsp, 24

    mov qword [rbp-8], 0 ; num
    mov qword [rbp-16], rsi ; num length
    mov qword [rbp-24], rdi

    xor rax, rax
    xor rbx, rbx
    xor rdx, rdx

_str_to_int_loop:
    mov rdi, qword [rbp-24]
    xor rcx, rcx

    mov cl, byte [rdi+rdx]
    sub rcx, 0x30
    
    mov rsi, qword [rbp-16]
    mov rdi, 10
    sub rsi, rdx
    dec rsi

    call _pow

    imul rcx, rax
    add qword [rbp-8], rcx
    inc rdx
    cmp rdx, [rbp-16]
    jne _str_to_int_loop
    mov rax, [rbp - 8]
    leave
    ret

;rdi - num, rsi - power
_pow:
    xor rax, rax
    xor rbx, rbx

    mov rax, 1
_pow_loop:
    cmp rbx, rsi
    je _pow_end
    imul rax, rdi
    inc rbx
    jmp _pow_loop
_pow_end:
    ret

; rsi - указатель на строку
; rdx - кол-во байт для ввода
_read:
    mov rax, 0
    mov rdi, 0
    syscall
    ret

; rsi - str ptr
; rdx - bytes count to write
_write:
    mov rax, 1
    mov rdi, 0
    syscall
    ret

_exit:
    mov rax, 60
    xor rdi, rdi
    syscall
