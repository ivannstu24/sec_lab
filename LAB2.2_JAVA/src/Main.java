/*
// Задание 2
import java.util.HashSet;

// Основной класс программы
public class Main {
    // Метод для подсчета количества уникальных email адресов
    public static int numUniqueEmails(String[] emails) {
        // Создаем HashSet для хранения уникальных адресов
        HashSet<String> uniqueEmails = new HashSet<>();

        // Проходим по каждому email в массиве
        for (String email : emails) {
            // Разделяем email на локальную часть и домен
            String[] parts = email.split("@");
            String local = parts[0];
            String domain = parts[1];

            // Удаляем все точки из локальной части
            local = local.replace(".", "");
            // Если есть знак "+", то отбрасываем все после него
            if (local.contains("+")) {
                local = local.split("\\+")[0];
            }
            // Добавляем в множество обработанный адрес
            uniqueEmails.add(local + "@" + domain);
        }

        // Возвращаем размер множества, который и является количеством уникальных адресов
        return uniqueEmails.size();
    }

    // Метод для запуска программы
    public static void main(String[] args) {
        // Пример массива email адресов
        String[] emails = {
                "merzovik69@mail.ru",
                "merzo.vik.69@mail.ru",
                "merzovik69@mail.ru",
                "mama69@mail.ru"
        };
        // Выводим результат работы метода numUniqueEmails
        System.out.println(numUniqueEmails(emails)); // Вывод: 2
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
