// задание 1
//
//import Foundation
//
//// Функция для подсчета количества не посещенных камней
//func unvisitedStones(_ N: Int, _ stones: Int, _ birds: [Int]) -> Int {
//    // Создаем массив для отслеживания посещенных камней
//    var visited = Array(repeating: 0, count: stones)
//    
//    // Перебираем каждую птицу и каждый камень
//    for bird in birds {
//        for i in 1...stones {
//            // Если номер камня делится на номер птицы без остатка,
//            // увеличиваем счетчик посещенных камней
//            if i % bird == 0 {
//                visited[i - 1] += 1
//            }
//        }
//    }
//
//    // Подсчитываем количество не посещенных камней
//    var unvisitedCount = 0
//    for count in visited {
//        if count == 0 {
//            unvisitedCount += 1
//        }
//    }
//
//    return unvisitedCount
//}
//
//// Примеры использования:
//print(unvisitedStones(2, 6, [3, 2]))  // Ожидаемый результат: 2
//print(unvisitedStones(2, 6, [5, 1]))  // Ожидаемый результат: 0
//
//
//
//// задание 2

import Foundation

// Функция для проверки корректности email-адреса
func checkingCorrectness(_ email: String) -> Bool {
    let length = email.count
    if email.first == "." || email.last == "." {
        return false
    }
    if length < 6 || length > 30 {
        return false
    }
    if email.contains("..") {
        return false
    }
    let validCharacters = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyz1234567890.")
    if email.rangeOfCharacter(from: validCharacters.inverted) != nil {
        return false
    }
    return true
}

// Список email-адресов
let emails = [
    "merzovlaik69@mail.ru",
    "merzo.vik.69@mail.ru",
    "merzovik69@mail.bru"
]

// Множество для хранения уникальных email-адресов
var uniqueEmails = Set<String>()

// Проверяем каждый email-адрес и добавляем его в множество, если он корректен
for email in emails {
    // Разбиваем email-адрес на имя пользователя и домен
    let components = email.components(separatedBy: "@")
    var emailName = components[0]
    let emailDomain = components[1]
    
    // Удаляем символ '*' из имени пользователя
    if let asteriskIndex = emailName.firstIndex(of: "*") {
        emailName = String(emailName[..<asteriskIndex])
    }
    
    // Проверяем корректность имени пользователя
    guard checkingCorrectness(emailName) else {
        fatalError("Invalid email - \(email)")
    }
    
    // Удаляем точки из имени пользователя
    emailName = emailName.replacingOccurrences(of: ".", with: "")
    
    // Добавляем корректный email-адрес в множество уникальных адресов
    uniqueEmails.insert("\(emailName)@\(emailDomain)")
}

// Выводим количество уникальных email-адресов
print(uniqueEmails.count)




//// задание 3
//
//import Foundation
//
//// Функция для подсчета суммы цифр, которые делятся на 3
//func sumOfDivisibleByThree(numbers: [Int]) -> Int {
//    var total = 0
//    // Перебираем каждое число
//    for number in numbers {
//        // Преобразуем число в строку и перебираем каждую цифру
//        for digit in String(number) {
//            // Если цифра делится на 3 без остатка, добавляем ее к сумме
//            if let digitValue = Int(String(digit)), digitValue % 3 == 0 {
//                total += digitValue
//            }
//        }
//    }
//    return total
//}
//
//// Пример использования:
//let numbers = [3, 333, 5370, 99]
//print(sumOfDivisibleByThree(numbers: numbers))  // Ожидаемый результат: 57
//
