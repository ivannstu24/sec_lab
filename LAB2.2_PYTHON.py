"""

# Задание 2

# Функция для проверки корректности email адреса
def checking_correctness(email):
    length = len(email)

    # Проверяем длину email адреса
    if email[0] == '.' or email[-1] == '.':
        return False

    # Проверяем длину email адреса
    if length < 6 or length > 30:
        return False

    # Проверяем наличие ".." в email адресе
    if ".." in email:
        return False

    # Проверяем символы в email адресе
    for i in email:
        if i in "&=+<>,_\'-" or i not in "abcdefghijklmnopqrstuvwxyz1234567890.":
            return False
    return True

emails = [
    "merzovlaik69@mail.ru",
    "merzo.vik.69@mail.ru",
    "merzovik69@mail.bru"
]

# Проверяем корректность email адресов и изменяем их формат
for i in range(len(emails)):
    email_name, email_domen = emails[i].split('@')

    # Убираем символы после '*'
    email_name = email_name.split('*')[0]

    # Если email некорректный, выбрасываем исключение
    if not checking_correctness(email_name):
        raise Exception("Invalid email - {}".format(emails[i]))

    # Убираем точки из локальной части
    email_name = ''.join(email_name.split('.'))

    # Форматируем email в требуемый вид
    emails[i] = email_name + '@' + email_domen

# Выводим количество уникальных email адресов
print(len(set(emails)))

"""

"""

# ЗАДАНИЕ 3

# Функция для подсчета суммы цифр чисел, делящихся на 3
def sum_of_divisible_by_three(numbers):
    total = 0
    for number in numbers:
        for digit in str(number):
            if int(digit) % 3 == 0:
                total += int(digit)
    return total

numbers = [3, 333, 570, 99]
# Выводим сумму цифр чисел, делящихся на 3
print(sum_of_divisible_by_three(numbers))

"""

"""

# ЗАДАНИЕ 1

# Функция для подсчета количества непосещенных камней
def unvisited_stones(N, stones, birds):
    # Создаем список для отслеживания посещенных камней, все изначально установлены в 0
    visited = [0] * stones
    
    # Проходим по каждой птице
    for bird in birds:
        # Проходим по каждому камню
        for i in range(1, stones + 1):
            # Если номер камня делится на размер шага птицы без остатка, увеличиваем счетчик посещенных камней
            if i % bird == 0:
                visited[i - 1] += 1

    # Инициализируем счетчик непосещенных камней
    unvisited_count = 0
    
    # Перебираем количество посещений каждого камня
    for count in visited:
        # Если камень не был посещен ни разу, увеличиваем счетчик непосещенных камней
        if count == 0:
            unvisited_count += 1

    # Возвращаем количество непосещенных камней
    return unvisited_count

# Примеры использования функции
print(unvisited_stones(2, 6, [3, 2]))  # Ожидаемый результат: 2
print(unvisited_stones(2, 6, [5, 1]))  # Ожидаемый результат: 0


"""
