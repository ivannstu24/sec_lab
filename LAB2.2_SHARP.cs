/*

// Задание 1

using System;

class Program
{
    // Функция для подсчета количества непосещенных камней
    static int UnvisitedStones(int stones, int[] birds)
    {
        // Создаем массив для хранения посещенных камней
        int[] visited = new int[stones];
        
        // Проходим по всем птицам и помечаем камни, которые они посещают
        foreach (int bird in birds)
        {
            for (int i = 1; i <= stones; i++)
            {
                if (i % bird == 0)
                {
                    visited[i - 1] += 1;
                }
            }
        }

        // Считаем количество непосещенных камней
        int unvisitedCount = 0;
        foreach (int count in visited)
        {
            if (count == 0)
            {
                unvisitedCount += 1;
            }
        }

        return unvisitedCount;
    }

    static void Main(string[] args)
    {
        // Примеры использования функции
        Console.WriteLine(UnvisitedStones(6, new int[] { 3, 2 })); // Результат: 2
        Console.WriteLine(UnvisitedStones(6, new int[] { 5, 1 })); // Результат: 0
    }
}

*/

/*

//Задание 2
using System;
using System.Collections.Generic;

class EmailChecker
{
    public static bool IsEmailCorrect(string email)
    {
        // Проверка длины email-адреса
        int length = email.Length;
        if (email[0] == '.' || email[length - 1] == '.')
        {
            return false;
        }
        if (length < 6 || length > 30)
        {
            return false;
        }

        // Проверка на наличие двух точек подряд
        if (email.Contains(".."))
        {
            return false;
        }

        // Проверка символов в email-адресе
        foreach (char c in email)
        {
            if ("&=+<>,_\'-".IndexOf(c) != -1 ||
                ("abcdefghijklmnopqrstuvwxyz1234567890.".IndexOf(c) == -1))
            {
                return false;
            }
        }
        return true;
    }

    static void Main(string[] args)
    {
        string[] emails = {
            "merzovlaik69@mail.ru",
            "merzo.vik.69@mail.ru",
            "merzovik69@mail.bru"
        };

        // Создаем множество для хранения уникальных email-адресов
        HashSet<string> uniqueEmails = new HashSet<string>();

        // Проверяем каждый email-адрес и добавляем его в множество, если он корректен
        foreach (string email in emails)
        {
            // Разбиваем email-адрес на имя пользователя и домен
            string[] parts = email.Split('@');
            string emailName = parts[0];
            string emailDomain = parts[1];

            // Удаляем символ '*' из имени пользователя
            emailName = emailName.Split('*')[0];

            // Проверяем корректность имени пользователя
            if (!IsEmailCorrect(emailName))
            {
                throw new ArgumentException("Invalid email - " + email);
            }

            // Удаляем точки из имени пользователя
            emailName = emailName.Replace(".", "");

            // Добавляем корректный email-адрес в множество уникальных адресов
            uniqueEmails.Add(emailName + "@" + emailDomain);
        }

        // Подсчитываем количество уникальных email-адресов
        Console.WriteLine(uniqueEmails.Count);
    }
}

*/

/*

// Задание 3

using System;
using System.Collections.Generic;

class Program
{
    // Функция для подсчета суммы цифр чисел, делящихся на 3
    static int SumOfDivisibleByThree(List<int> numbers)
    {
        int total = 0;
        
        // Обходим каждое число в списке
        foreach (int number in numbers)
        {
            // Преобразуем число в строку, чтобы обойти каждую цифру
            foreach (char digit in number.ToString())
            {
                // Если цифра делится на 3 без остатка, добавляем ее к общей сумме
                if (int.Parse(digit.ToString()) % 3 == 0)
                {
                    total += int.Parse(digit.ToString());
                }
            }
        }
        return total;
    }

    static void Main(string[] args)
    {
        // Пример использования функции
        List<int> numbers = new List<int> { 3, 333, 570, 99 };
        Console.WriteLine(SumOfDivisibleByThree(numbers)); // Вывод: 27
    }
}
*/
