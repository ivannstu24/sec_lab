/*

//Задание 1

fun unvisitedStones(N: Int, stones: Int, birds: List<Int>): Int {
    val visited = IntArray(stones)
    for (bird in birds) {
        for (i in 1..stones) {
            if (i % bird == 0) {
                visited[i - 1]++
            }
        }
    }

    var unvisitedCount = 0
    for (count in visited) {
        if (count == 0) {
            unvisitedCount++
        }
    }

    return unvisitedCount
}

// Примеры использования:
fun main() {
    println(unvisitedStones(2, 6, listOf(3, 2)))  // Результат: 2
    println(unvisitedStones(2, 6, listOf(5, 1)))  // Результат: 0
}
*/

/*
//Задание 2

fun numUniqueEmails(emails: List<String>): Int {
    val uniqueEmails = mutableSetOf<String>()

    for (email in emails) {
        val (local, domain) = email.split('@')
        // Удаляем все точки из локальной части
        val processedLocal = local.replace(".", "")
        // Если есть знак "+", то отбрасываем все после него
        val finalLocal = if ("+" in processedLocal) processedLocal.split("+")[0] else processedLocal
        // Добавляем в множество обработанный адрес
        uniqueEmails.add("$finalLocal@$domain")
    }

    return uniqueEmails.size
}

fun main() {
    val emails = listOf(
        "merzovik69@mail.ru",
        "merzo.vik.69@mail.ru",
        "merzovik69@mail.ru",
        "merzovsik69@mail.ru"
    )
    println(numUniqueEmails(emails))  // Вывод: 2
}
*/

/*
//Задание 3

fun sumOfDivisibleByThree(numbers: List<Int>): Int {
    var total = 0
    for (number in numbers) {
        for (digit in number.toString()) {
            if (digit.toString().toInt() % 3 == 0) {
                total += digit.toString().toInt()
            }
        }
    }
    return total
}

fun main() {
    val numbers = listOf(3, 333, 570, 99)
    println(sumOfDivisibleByThree(numbers)) // Вывод: 30
}
*/