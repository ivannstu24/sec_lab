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
