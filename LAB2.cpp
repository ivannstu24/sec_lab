
 #include <iostream>
 #include <vector>

 int unvisited_stones(int stones, std::vector<int> birds) {
     // Создаем вектор visited, инициализированный нулями, чтобы отслеживать,
     // сколько раз каждый камень был посещен
     std::vector<int> visited(stones, 0);

     // Проходим по каждой птице в списке birds
     for (int bird : birds) {
         // Проходим по каждому камню от 1 до общего количества камней stones
         for (int i = 1; i <= stones; ++i) {
             // Если номер камня делится нацело на число, соответствующее текущей птице,
             // увеличиваем счетчик посещенности этого камня на 1
             if (i % bird == 0) {
                 visited[i - 1] += 1;
             }
         }
     }

     // Инициализируем счетчик непосещенных камней
     int unvisited_count = 0;

     // Подсчитываем количество камней, которые не были посещены ни одной птицей
     for (int count : visited) {
         if (count == 0) {
             unvisited_count += 1;
         }
     }

     return unvisited_count;
 }

 int main() {
     int N;
     std::cout << "Enter the number of birds: ";
     std::cin >> N;

     std::vector<int> birds(N);
     std::cout << "Enter the steps of birds: ";
     for (int i = 0; i < N; ++i) {
         std::cin >> birds[i];
     }

     int stones;
     std::cout << "Enter the total number of stones: ";
     std::cin >> stones;

     // Пример использования:
     std::cout << "Number of unvisited stones: " << unvisited_stones(stones, birds) << std::endl;

     return 0;
 }

 /*

#include <iostream>
#include <unordered_set>
#include <string>
#include <algorithm>
#include <stdexcept> // Добавлен заголовочный файл для std::invalid_argument

bool isEmailCorrect(const std::string& email) {
    // Проверка длины email-адреса
    int length = email.length();
    if (email[0] == '.' || email[length - 1] == '.') {
        return false;
    }
    if (length < 6 || length > 30) {
        return false;
    }

    // Проверка на наличие двух точек или символов @ подряд
    if (email.find("..") != std::string::npos || email.find("@@") != std::string::npos) {
        throw std::invalid_argument("Invalid email format: consecutive '@' symbols");
    }

    // Проверка символов в email-адресе
    for (char c : email) {
        if (std::string("&=+<>,_\'-").find(c) != std::string::npos ||
            std::string("abcdefghijklmnopqrstuvwxyz1234567890.").find(c) == std::string::npos) {
            return false;
        }
    }

    // Дополнительная проверка: убедимся, что в email-адресе нет двух символов '@'
    if (std::count(email.begin(), email.end(), '@') >= 2) {
        return false;
    }

    return true;
}
int main() {
    std::string emails[] = {
        "merzovlaik69@mail.ru",
        "merzovlaik69@@ma.il.ru",
        "merzovik69@mail.bru"
    };

    // Создаем множество для хранения уникальных email-адресов
    std::unordered_set<std::string> uniqueEmails;
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






#include <iostream>

// Функция для определения суммы цифр числа, делящихся на 3
int sumDivisibleBy3(int number) {
    int total = 0;
    while (number > 0) {
        int digit = number % 10;
        if (digit % 3 == 0) {
            total += digit;
        }
        number /= 10;
    }
    return total;
}

int main() {
    int n;
    std::cout << "Введите количество чисел: ";
    std::cin >> n;

    int totalSum = 0;

    for (int i = 0; i < n; ++i) {
        int num;
        std::cout << "Введите число: ";
        std::cin >> num;
        totalSum += sumDivisibleBy3(num);
    }

    std::cout << "Сумма всех цифр, которые делятся на 3: " << totalSum << std::endl;

    return 0;
}

*/
