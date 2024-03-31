/*
// задание 1

fn unvisited_stones(N: usize, stones: usize, birds: Vec<usize>) -> usize {
    let mut visited = vec![0; stones];
    for bird in birds {
        for i in 1..=stones {
            if i % bird == 0 {
                visited[i - 1] += 1;
            }
        }
    }

    let mut unvisited_count = 0;
    for &count in visited.iter() {
        if count == 0 {
            unvisited_count += 1;
        }
    }

    unvisited_count
}

fn main() {
    println!("{}", unvisited_stones(2, 6, vec![3, 2])); // Результат: 2
    println!("{}", unvisited_stones(2, 6, vec![5, 1])); // Результат: 0
}

*/


/*

// Задание 2

use std::collections::HashSet;

fn num_unique_emails(emails: Vec<&str>) -> usize {
    let mut unique_emails: HashSet<String> = HashSet::new();

    for email in emails {
        let parts: Vec<&str> = email.split('@').collect();
        let local = parts[0];
        let domain = parts[1];
        let mut modified_local = local.replace(".", "");
        if let Some(idx) = modified_local.find('+') {
            modified_local = String::from(&modified_local[..idx]);
        }
        let modified_email = format!("{}@{}", modified_local, domain);
        unique_emails.insert(modified_email);
    }

    unique_emails.len()
}

fn main() {
    let emails = vec![
        "merzovik69@mail.ru",
        "merzo.vik.69@mail.ru",
        "merzovik69@mail.ru",
        "merzovik689@mail.ru"
    ];
    println!("{}", num_unique_emails(emails)); // Вывод: 2
}
*/

/*

// задание 3
fn sum_of_divisible_by_three(numbers: Vec<usize>) -> usize {
    let mut total = 0;
    for number in numbers {
        for digit_char in number.to_string().chars() {
            let digit = digit_char.to_digit(10).unwrap();
            if digit % 3 == 0 {
                total += digit;
            }
        }
    }
    total as usize
}

fn main() {
    let numbers = vec![3, 3333, 570, 99];
    println!("{}", sum_of_divisible_by_three(numbers)); // Вывод: 27
}
*/

