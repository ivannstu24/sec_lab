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


/*  // Задание 2
fun isEmailCorrect(email: String): Boolean {
    // Проверка длины email-адреса
    val length = email.length
    if (email[0] == '.' || email[length - 1] == '.') {
        return false
    }
    if (length < 6 || length > 30) {
        return false
    }

    // Проверка на наличие двух точек подряд
    if (email.contains("..")) {
        return false
    }

    // Проверка символов в email-адресе
    for (c in email) {
        if ("&=+<>,_\'-".indexOf(c) != -1 ||
            !("abcdefghijklmnopqrstuvwxyz1234567890.".contains(c))) {
            return false
        }
    }
    return true
}

fun main() {
    val emails = arrayOf(
        "merzovlaik69@mail.ru",
        "merzo.vik.69@mail.ru",
        "merzovik69@mail.bru"
    )

    // Создаем множество для хранения уникальных email-адресов
    val uniqueEmails = HashSet<String>()

    // Проверяем каждый email-адрес и добавляем его в множество, если он корректен
    for (email in emails) {
        // Разбиваем email-адрес на имя пользователя и домен
        val parts = email.split('@')
        var emailName = parts[0]
        val emailDomain = parts[1]

        // Удаляем символ '*' из имени пользователя
        emailName = emailName.split('*')[0]

        // Проверяем корректность имени пользователя
        if (!isEmailCorrect(emailName)) {
            throw IllegalArgumentException("Invalid email - $email")
        }

        // Удаляем точки из имени пользователя
        emailName = emailName.replace(".", "")

        // Добавляем корректный email-адрес в множество уникальных адресов
        uniqueEmails.add("$emailName@$emailDomain")
    }

    // Подсчитываем количество уникальных email-адресов
    println(uniqueEmails.size)
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
