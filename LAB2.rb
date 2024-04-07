//Задание 1

def unvisited_stones(n, stones, birds)
  # Создаем массив visited, инициализированный нулями, чтобы отслеживать,
  # сколько раз каждый камень был посещен
  visited = Array.new(stones, 0)

  # Проходим по каждой птице в списке birds
  birds.each do |bird|
    # Проходим по каждому камню от 1 до общего количества камней stones
    (1..stones).each do |i|
      # Если номер камня делится нацело на число, соответствующее текущей птице,
      # увеличиваем счетчик посещенности этого камня на 1
      if i % bird == 0
        visited[i - 1] += 1
      end
    end
  end

  # Инициализируем счетчик непосещенных камней
  unvisited_count = 0

  # Подсчитываем количество камней, которые не были посещены ни одной птицей
  visited.each do |count|
    if count == 0
      unvisited_count += 1
    end
  end

  return unvisited_count
end

# Примеры использования:
puts unvisited_stones(2, 10, [7, 2])
puts unvisited_stones(2, 6, [9, 7])




//задание 2
require 'set'

def checking_correctness(email)
  # Проверка длины email-адреса
  length = email.length
  return false if email[0] == '.' || email[-1] == '.'
  return false if length < 6 || length > 30

  # Проверка на наличие двух точек подряд
  return false if email.include?('..')

  # Проверка символов в email-адресе
  email.each_char do |char|
    return false if "&=+<>,_'-".include?(char) || !char.match(/[a-z0-9.]/)
  end
  true
end

emails = [
  "merzovlaik69@mail.ru",
  "merzo.vik.69@mail.ru",
  "merzovik69@mail.bru"
]

# Создаем множество для хранения уникальных email-адресов
unique_emails = Set.new

# Проверяем каждый email-адрес и добавляем его в множество, если он корректен
emails.each do |email|
  # Разбиваем email-адрес на имя пользователя и домен
  email_name, email_domain = email.split('@')

  # Удаляем символ '*' из имени пользователя
  email_name = email_name.split('*')[0]

  # Проверяем корректность имени пользователя
  raise "Invalid email - #{email}" unless checking_correctness(email_name)

  # Удаляем точки из имени пользователя
  email_name = email_name.delete('.')

  # Добавляем корректный email-адрес в множество уникальных адресов
  unique_emails.add("#{email_name}@#{email_domain}")
end

# Подсчитываем количество уникальных email-адресов
puts unique_emails.length


// задание 3

def sum_of_divisible_by_three(numbers)
    # Инициализируем переменную для хранения суммы
    total = 0

    # Перебираем числа из массива
    numbers.each do |number|
        # Преобразуем число в строку и перебираем каждую его цифру
        number.to_s.chars.each do |digit|
            # Преобразуем символ цифры в целое число
            digit_int = digit.to_i
            # Проверяем, делится ли текущая цифра на 3 без остатка
            if digit_int % 3 == 0
                # Если делится, добавляем её к общей сумме
                total += digit_int
            end
        end
    end

    # Возвращаем общую сумму
    return total
end

# Пример использования:
numbers = [3, 3333, 570, 99]
puts sum_of_divisible_by_three(numbers)

