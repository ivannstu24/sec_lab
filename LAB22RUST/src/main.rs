/*
// задание 1

// Функция для подсчета количества непосещенных камней
fn unvisited_stones(N: usize, stones: usize, birds: Vec<usize>) -> usize {
    // Создаем вектор для хранения информации о посещенных камнях, инициализируем его нулями
    let mut visited = vec![0; stones];
    
    // Проходим по каждой птице в списке
    for bird in birds {
        // Проходим по каждому камню от 1 до количества камней
        for i in 1..=stones {
            // Если номер камня делится на номер птицы без остатка, увеличиваем счетчик посещений для этого камня
            if i % bird == 0 {
                visited[i - 1] += 1;
            }
        }
    }

    // Считаем количество непосещенных камней
    let mut unvisited_count = 0;
    for &count in visited.iter() {
        if count == 0 {
            unvisited_count += 1;
        }
    }

    unvisited_count
}

fn main() {
    // Пример вызова функции и вывод результата
    println!("{}", unvisited_stones(2, 6, vec![3, 2])); // Результат: 2
    println!("{}", unvisited_stones(2, 6, vec![5, 1])); // Результат: 0
}

*/


/*

// Задание 2

use std::collections::HashSet;

// Функция для проверки корректности email-адреса
fn checking_correctness(email: &str) -> bool {
    let length = email.len();
    if email.starts_with('.') || email.ends_with('.') {
        return false;
    }
    if length < 6 || length > 30 {
        return false;
    }
    if email.contains("..") {
        return false;
    }
    let valid_characters = "abcdefghijklmnopqrstuvwxyz1234567890.";
    if email.chars().any(|c| !valid_characters.contains(c)) {
        return false;
    }
    true
}

fn main() {
    let emails = vec![
        "merzovlaik69@mail.ru",
        "merzo.vik.69@mail.ru",
        "merzovik69@mail.bru",
    ];

    // Множество для хранения уникальных email-адресов
    let mut unique_emails = HashSet::new();

    // Проверяем каждый email-адрес и добавляем его в множество, если он корректен
    for email in &emails {
        // Разбиваем email-адрес на имя пользователя и домен
        let parts: Vec<&str> = email.split('@').collect();
        let mut email_name = parts[0].to_string();
        let email_domain = parts[1];

        // Удаляем символ '*' из имени пользователя
        if let Some(asterisk_index) = email_name.find('*') {
            email_name.truncate(asterisk_index);
        }

        // Проверяем корректность имени пользователя
        if !checking_correctness(&email_name) {
            panic!("Invalid email - {}", email);
        }

        // Удаляем точки из имени пользователя
        email_name.retain(|c| c != '.');

        // Добавляем корректный email-адрес в множество уникальных адресов
        unique_emails.insert(format!("{}@{}", email_name, email_domain));
    }

    // Выводим количество уникальных email-адресов
    println!("{}", unique_emails.len());
}

*/

/*

// задание 3
// Функция для подсчета суммы цифр чисел, делящихся на 3
fn sum_of_divisible_by_three(numbers: Vec<usize>) -> usize {
    let mut total = 0;
    // Проходим по каждому числу в списке
    for number in numbers {
        // Преобразуем число в строку и проходим по каждому символу
        for digit_char in number.to_string().chars() {
            // Преобразуем символ обратно в число
            let digit = digit_char.to_digit(10).unwrap();
            // Если цифра делится на 3 без остатка, добавляем ее к общей сумме
            if digit % 3 == 0 {
                total += digit;
            }
        }
    }
    // Возвращаем общую сумму
    total as usize
}

fn main() {
    // Пример входных данных
    let numbers = vec![3, 3333, 570, 99];
    // Выводим результат работы функции
    println!("{}", sum_of_divisible_by_three(numbers)); // Вывод: 27
}
*/
