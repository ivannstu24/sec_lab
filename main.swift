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
//
//import Foundation
//
//// Функция для подсчета количества уникальных адресов электронной почты
//func numUniqueEmails(_ emails: [String]) -> Int {
//    // Множество для хранения уникальных адресов электронной почты
//    var uniqueEmails = Set<String>()
//
//    // Перебираем каждый адрес электронной почты
//    for email in emails {
//        let parts = email.split(separator: "@")
//        guard parts.count == 2 else {
//            continue
//        }
//
//        var local = String(parts[0])
//        let domain = String(parts[1])
//
//        // Удаляем точки из локальной части адреса
//        local = local.replacingOccurrences(of: ".", with: "")
//
//        // Удаляем все после символа '+' (если присутствует)
//        if let plusIndex = local.firstIndex(of: "+") {
//            local = String(local[..<plusIndex])
//        }
//
//        // Добавляем обработанный адрес электронной почты в множество
//        uniqueEmails.insert(local + "@" + domain)
//    }
//
//    return uniqueEmails.count
//}
//
//// Пример использования:
//let emails = [
//    "merzovik69@mail.ru",
//    "merzo.vik.69@mail.ru",
//    "merzovik69@mail.ru",
//    "halalalal69@mail.ru"
//]
//print(numUniqueEmails(emails))  // Ожидаемый результат: 2
//
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
