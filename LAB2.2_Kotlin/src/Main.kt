/* // Задание 1: Программа для подсчета количества непосещенных камней.
fun unvisitedStones(N: Int, stones: Int, birds: List<Int>): Int {
    // Инициализация массива, где каждый элемент соответствует камню и содержит количество птиц, которые его посетили.
    val visited = IntArray(stones)
    
    // Перебираем каждую птицу в списке.
    for (bird in birds) {
        // Для каждой птицы обходим каждый камень и увеличиваем счетчик посещения для камня, если птица его посетила.
        for (i in 1..stones) {
            if (i % bird == 0) {
                visited[i - 1]++
            }
        }
    }

    var unvisitedCount = 0
    // Считаем количество камней, которые не были посещены ни одной птицей.
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


/* // Задание 2: Программа для подсчета количества уникальных email адресов.
fun numUniqueEmails(emails: List<String>): Int {
    // Создаем множество, чтобы хранить уникальные адреса.
    val uniqueEmails = mutableSetOf<String>()

    // Обходим каждый email адрес в списке.
    for (email in emails) {
        // Разделяем адрес на локальную часть и домен.
        val (local, domain) = email.split('@')
        // Удаляем все точки из локальной части адреса.
        val processedLocal = local.replace(".", "")
        // Если есть символ "+", обрезаем локальную часть до него.
        val finalLocal = if ("+" in processedLocal) processedLocal.split("+")[0] else processedLocal
        // Добавляем обработанный email адрес в множество уникальных адресов.
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


/* // Задание 3: Программа для подсчета суммы цифр чисел из списка, которые делятся на 3.
fun sumOfDivisibleByThree(numbers: List<Int>): Int {
    var total = 0
    // Перебираем каждое число в списке.
    for (number in numbers) {
        // Конвертируем число в строку и перебираем каждую цифру.
        for (digit in number.toString()) {
            // Если цифра делится на 3 без остатка, добавляем ее к общей сумме.
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
