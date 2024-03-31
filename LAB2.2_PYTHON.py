"""
#Задание 2

def checking_correctness(email):
    length = len(email)

    if email[0] == '.' or email[-1] == '.':
        return False

    if length < 6 or length > 30:
        return False

    if ".." in email:
        return False

    for i in email:
        if i in "&=+<>,_\'-" or i not in "abcdefghijklmnopqrstuvwxyz1234567890.":
            return False
    return True

emails = [
    "merzovlaik69@mail.ru",
    "merzo.vik.69@mail.ru",
    "merzovik69@mail.bru"
]

for i in range(len(emails)):
    email_name, email_domen = emails[i].split('@')

    email_name = email_name.split('*')[0]

    if not checking_correctness(email_name):
        raise Exception("Invalid email - {}".format(emails[i]))

    email_name = ''.join(email_name.split('.'))

    emails[i] = email_name + '@' + email_domen

print(len(set(emails))) 
"""


"""#ЗАДАНИЕ 3

def sum_of_divisible_by_three(numbers):
    total = 0
    for number in numbers:
        for digit in str(number):
            if int(digit) % 3 == 0:
                total += int(digit)
    return total

numbers = [3, 333, 570, 99]
print(sum_of_divisible_by_three(numbers))"""

"""# ЗАДАНИЕ 1 (Скорее всего не правильно)

def find_unvisited_stones(N, stones, birds):
    # Отсортируем птиц по возрастанию
    birds.sort()

    # Создадим массив для отметки посещенных валунов
    visited = [False] * (stones + 1)

    # Пройдемся по каждой птице
    for bird in birds:
        # Начнем с первого валуна
        position = 0
        while position <= stones:
            # Если птица уже посетила эту позицию, то ищем следующую
            if visited[position]:
                position += bird
            else:
                # Отметим все валуны, которые посетит птица
                while position <= stones:
                    visited[position] = True
                    position += bird

    # Подсчитаем количество непосещенных валунов
    unvisited_stones = sum(1 for stone in visited if not stone)

    return unvisited_stones


# Пример использования
N = 2
stones = 6
birds = [3, 2]
print(find_unvisited_stones(N, stones, birds))  # Выведет: 2

N = 2
stones = 6
birds = [5, 1]
print(find_unvisited_stones(N, stones, birds))  # Выведет: 0"""


"""
#ЗАДАНИЕ 1


def unvisited_stones(N, stones, birds):
    visited = [0] * stones
    for bird in birds:
        for i in range(1, stones + 1):
            if i % bird == 0:
                visited[i - 1] += 1

    unvisited_count = 0
    for count in visited:
        if count == 0:
            unvisited_count += 1

    return unvisited_count


# Примеры использования:
print(unvisited_stones(2, 6, [3, 2]))  # Результат: 2
print(unvisited_stones(2, 6, [5, 1]))  # Результат: 0

"""
