//// задание 2
//
//import Foundation
//
//func numUniqueEmails(_ emails: [String]) -> Int {
//    var uniqueEmails = Set<String>()
//
//    for email in emails {
//        let parts = email.split(separator: "@")
//        guard parts.count == 2 else {
//            continue
//        }
//
//        var local = String(parts[0])
//        let domain = String(parts[1])
//
//        // Remove dots from local part
//        local = local.replacingOccurrences(of: ".", with: "")
//
//        // Discard everything after '+' if present
//        if let plusIndex = local.firstIndex(of: "+") {
//            local = String(local[..<plusIndex])
//        }
//
//        // Add the processed email to the set
//        uniqueEmails.insert(local + "@" + domain)
//    }
//
//    return uniqueEmails.count
//}
//
//// Example usage
//let emails = [
//    "merzovik69@mail.ru",
//    "merzo.vik.69@mail.ru",
//    "merzovik69@mail.ru",
//    "halalalal69@mail.ru"
//]
//print(numUniqueEmails(emails))  // Output: 2


// Задание 3
//import Foundation
//
//func sumOfDivisibleByThree(numbers: [Int]) -> Int {
//    var total = 0
//    for number in numbers {
//        for digit in String(number) {
//            if let digitValue = Int(String(digit)), digitValue % 3 == 0 {
//                total += digitValue
//            }
//        }
//    }
//    return total
//}
//
//let numbers = [3, 333, 5370, 99]
//print(sumOfDivisibleByThree(numbers: numbers))


//задание 1
//
//import Foundation
//
//func unvisitedStones(_ N: Int, _ stones: Int, _ birds: [Int]) -> Int {
//    var visited = Array(repeating: 0, count: stones)
//    for bird in birds {
//        for i in 1...stones {
//            if i % bird == 0 {
//                visited[i - 1] += 1
//            }
//        }
//    }
//
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
//print(unvisitedStones(2, 6, [3, 2]))  // Результат: 2
//print(unvisitedStones(2, 6, [5, 1]))  // Результат: 0
//
