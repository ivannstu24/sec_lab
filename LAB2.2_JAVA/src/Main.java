/*
// Задание 2
import java.util.HashSet;

public class Main {

    public static boolean isEmailCorrect(String email) {
        // Проверка длины email-адреса
        int length = email.length();
        if (email.charAt(0) == '.' || email.charAt(length - 1) == '.') {
            return false;
        }
        if (length < 6 || length > 30) {
            return false;
        }

        // Проверка на наличие двух точек подряд
        if (email.contains("..")) {
            return false;
        }

        // Проверка символов в email-адресе
        for (int i = 0; i < length; i++) {
            char c = email.charAt(i);
            if ("&=+<>,_\'-".indexOf(c) != -1 ||
                    ("abcdefghijklmnopqrstuvwxyz1234567890.".indexOf(c) == -1)) {
                return false;
            }
        }
        return true;
    }

    public static void main(String[] args) {
        String[] emails = {
                "merzovlaik69@mail.ru",
                "merzo.vik.69@mail.ru",
                "merzovik69@mail.bru"
        };

        // Создаем множество для хранения уникальных email-адресов
        HashSet<String> uniqueEmails = new HashSet<>();

        // Проверяем каждый email-адрес и добавляем его в множество, если он корректен
        for (String email : emails) {
            // Разбиваем email-адрес на имя пользователя и домен
            String[] parts = email.split("@");
            String emailName = parts[0];
            String emailDomain = parts[1];

            // Удаляем символ '*' из имени пользователя
            emailName = emailName.split("\\*")[0];

            // Проверяем корректность имени пользователя
            if (!isEmailCorrect(emailName)) {
                throw new IllegalArgumentException("Invalid email - " + email);
            }

            // Удаляем точки из имени пользователя
            emailName = emailName.replace(".", "");

            // Добавляем корректный email-адрес в множество уникальных адресов
            uniqueEmails.add(emailName + "@" + emailDomain);
        }

        // Подсчитываем количество уникальных email-адресов
        System.out.println(uniqueEmails.size());
    }
}
*/
/*
//Задание 3
import java.util.ArrayList;

// Основной класс программы
public class Main {
    // Метод для подсчета суммы цифр чисел, делящихся на 3
    public static int sumOfDivisibleByThree(ArrayList<Integer> numbers) {
        // Инициализация переменной для хранения суммы
        int total = 0;
        // Проходим по каждому числу в списке
        for (int number : numbers) {
            // Преобразуем число в строку для удобства обработки цифр
            String numStr = String.valueOf(number);
            // Проходим по каждой цифре числа
            for (int i = 0; i < numStr.length(); i++) {
                // Получаем текущую цифру числа
                int digit = Character.getNumericValue(numStr.charAt(i));
                // Если цифра делится на 3 без остатка, добавляем ее к общей сумме
                if (digit % 3 == 0) {
                    total += digit;
                }
            }
        }
        // Возвращаем общую сумму
        return total;
    }

    // Метод для запуска программы
    public static void main(String[] args) {
        // Пример списка чисел
        ArrayList<Integer> numbers = new ArrayList<>();
        numbers.add(3);
        numbers.add(333);
        numbers.add(570);
        numbers.add(99);
        // Выводим результат работы метода sumOfDivisibleByThree
        System.out.println(sumOfDivisibleByThree(numbers)); // Вывод: 33
    }
}
*/
/*
//Задание 1

import java.util.Arrays;

// Основной класс программы
public class Main {
    // Метод для подсчета количества непосещенных камней
    public static int unvisitedStones(int N, int stones, int[] birds) {
        // Создаем массив для отметок о посещении камней
        int[] visited = new int[stones];
        // Заполняем массив нулями
        Arrays.fill(visited, 0);

        // Проходим по каждой птице в массиве
        for (int bird : birds) {
            // Проходим по каждому камню
            for (int i = 1; i <= stones; i++) {
                // Если номер камня делится на номер птицы без остатка, увеличиваем счетчик посещений
                if (i % bird == 0) {
                    visited[i - 1]++;
                }
            }
        }

        // Считаем количество непосещенных камней
        int unvisitedCount = 0;
        for (int count : visited) {
            if (count == 0) {
                unvisitedCount++;
            }
        }

        // Возвращаем количество непосещенных камней
        return unvisitedCount;
    }

    // Метод для запуска программы
    public static void main(String[] args) {
        // Пример вызова метода и вывод результатов
        System.out.println(unvisitedStones(2, 6, new int[]{3, 2})); // Результат: 2
        System.out.println(unvisitedStones(2, 6, new int[]{5, 1})); // Результат: 0
    }
}
*/
