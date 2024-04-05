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

// Задание 2

using System;
using System.Collections.Generic;

class Program
{
    // Функция для подсчета количества уникальных email адресов
    static int NumUniqueEmails(string[] emails)
    {
        HashSet<string> uniqueEmails = new HashSet<string>();

        // Обработка каждого email адреса
        foreach (string email in emails)
        {
            // Разделение адреса на локальную и доменную часть
            string[] parts = email.Split('@');
            string local = parts[0];
            string domain = parts[1];
            
            // Удаляем все точки из локальной части
            local = local.Replace(".", "");
            // Если есть знак "+", то отбрасываем все после него
            if (local.Contains("+"))
            {
                local = local.Split('+')[0];
            }
            // Добавляем в множество обработанный адрес
            uniqueEmails.Add(local + "@" + domain);
        }

        return uniqueEmails.Count;
    }

    static void Main(string[] args)
    {
        // Пример использования функции
        string[] emails = {
            "merzovik69@mail.ru",
            "merzo.vik.69@mail.ru",
            "merzovik69@mail.ru"
        };
        Console.WriteLine(NumUniqueEmails(emails)); // Вывод: 2
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
