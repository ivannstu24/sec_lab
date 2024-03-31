section .data
    numbers dd 3, 333, 570, 99
    num_numbers equ ($ - numbers) / 4
    total dd 0

section .text
    global _start

_start:
    ; Инициализация
    xor esi, esi   ; Индекс в массиве чисел
    mov eax, [total]   ; Обнуление суммы
    mov dword [eax], 0
    
sum_loop:
    cmp esi, num_numbers   ; Проверка, достигли ли конца массива чисел
    jge finish_sum
    
    ; Получение текущего числа
    mov edx, esi
    call get_current_number
    
    ; Проверка каждой цифры на делимость на 3
    mov edi, eax   ; EDI указывает на текущее число
    xor ebx, ebx   ; Сброс счетчика цифр
digit_loop:
    movzx ecx, byte [edi]   ; Загрузка текущей цифры
    test cl, cl   ; Проверка, является ли текущая цифра нулевым символом (концом строки)
    jz .end_of_digits   ; Если да, завершаем цикл
    sub cl, '0'   ; Преобразование символа в число
    mov edx, ecx
    mov eax, 3
    xor edx, edx
    div eax
    cmp edx, 0
    jne .not_divisible   ; Если остаток не равен 0, переходим к следующей цифре
    add dword [total], ecx   ; Добавляем цифру к сумме
.not_divisible:
    inc edi   ; Переходим к следующей цифре
    jmp digit_loop

.end_of_digits:
    inc esi   ; Переходим к следующему числу
    jmp sum_loop

finish_sum:
    ; Вывод суммы
    mov eax, [total]
    call print_sum
    
    ; Выход из программы
    mov eax, 1
    xor ebx, ebx
    int 0x80

get_current_number:
    ; EDX содержит индекс числа
    mov eax, [numbers + edx*4]
    ret

print_sum:
    ; Вывод числа в stdout
    mov ebx, eax
    mov eax, 4
    mov ecx, esp
    mov edx, 4
    int 0x80
    ret
