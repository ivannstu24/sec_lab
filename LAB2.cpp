/*

//задание 2
#include <iostream>
#include <unordered_set>
#include <string>
#include <algorithm>

bool isEmailCorrect(const std::string& email) {
    // Проверка длины email-адреса
    int length = email.length();
    if (email[0] == '.' || email[length - 1] == '.') {
        return false;
    }
    if (length < 6 || length > 30) {
        return false;
    }

    // Проверка на наличие двух точек подряд
    if (email.find("..") != std::string::npos) {
        return false;
    }

    // Проверка символов в email-адресе
    for (char c : email) {
        if (std::string("&=+<>,_\'-").find(c) != std::string::npos ||
            std::string("abcdefghijklmnopqrstuvwxyz1234567890.").find(c) == std::string::npos) {
            return false;
        }
    }
    return true;
}

int main() {
    std::string emails[] = {
        "merzovlaik69@mail.ru",
        "merzo.vik.69@mail.ru",
        "merzovik69@mail.bru"
    };

    // Создаем множество для хранения уникальных email-адресов
    std::unordered_set<std::string> uniqueEmails;

*/

/*

//задание 3
#include <iostream>
#include <vector>
#include <string>

int sum_of_divisible_by_three(std::vector<int> numbers) {
    // Инициализируем переменную для хранения суммы
    int total = 0;

    // Перебираем числа из вектора
    for (int number : numbers) {
        // Преобразуем число в строку и перебираем каждую его цифру
        std::string num_str = std::to_string(number);
        for (char digit : num_str) {
            // Преобразуем символ цифры в целое число
            int digit_int = digit - '0';
            // Проверяем, делится ли текущая цифра на 3 без остатка
            if (digit_int % 3 == 0) {
                // Если делится, добавляем её к общей сумме
                total += digit_int;
            }
        }
    }
    
    // Возвращаем общую сумму
    return total;
}

int main() {
    // Пример использования:
    std::vector<int> numbers = {3, 33333, 570, 99};
    std::cout << sum_of_divisible_by_three(numbers) << std::endl;
    return 0;
}

    // Проверяем каждый email-адрес и добавляем его в множество, если он корректен
    for (const std::string& email : emails) {
        // Разбиваем email-адрес на имя пользователя и домен
        std::size_t pos = email.find('@');
        std::string emailName = email.substr(0, pos);
        std::string emailDomain = email.substr(pos + 1);

        // Удаляем символ '*' из имени пользователя
        pos = emailName.find('*');
        if (pos != std::string::npos) {
            emailName.erase(pos);
        }

        // Проверяем корректность имени пользователя
        if (!isEmailCorrect(emailName)) {
            throw std::invalid_argument("Invalid email - " + email);
        }

        // Удаляем точки из имени пользователя
        emailName.erase(std::remove(emailName.begin(), emailName.end(), '.'), emailName.end());

        // Добавляем корректный email-адрес в множество уникальных адресов
        uniqueEmails.insert(emailName + '@' + emailDomain);
    }

    // Подсчитываем количество уникальных email-адресов
    std::cout << uniqueEmails.size() << std::endl;

    return 0;
}
*/
