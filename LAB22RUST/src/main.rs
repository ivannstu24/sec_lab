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

// Функция для подсчета количества уникальных email адресов
fn num_unique_emails(emails: Vec<&str>) -> usize {
    // Создаем HashSet для хранения уникальных адресов
    let mut unique_emails: HashSet<String> = HashSet::new();

    // Проходим по каждому email в массиве
    for email in emails {
        // Разделяем email на локальную часть и домен
        let parts: Vec<&str> = email.split('@').collect();
        let local = parts[0];
        let domain = parts[1];
        
        // Удаляем все точки из локальной части
        let mut modified_local = local.replace(".", "");
        // Если есть знак "+", то отбрасываем все после него
        if let Some(idx) = modified_local.find('+') {
            modified_local = String::from(&modified_local[..idx]);
        }
        // Формируем модифицированный email адрес и добавляем его в HashSet
        let modified_email = format!("{}@{}", modified_local, domain);
        unique_emails.insert(modified_email);
    }

    // Возвращаем количество уникальных адресов
    unique_emails.len()
}

fn main() {
    // Пример входных данных
    let emails = vec![
        "merzovik69@mail.ru",
        "merzo.vik.69@mail.ru",
        "merzovik69@mail.ru",
        "merzovik689@mail.ru"
    ];
    // Выводим результат работы функции
    println!("{}", num_unique_emails(emails)); // Вывод: 2
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
