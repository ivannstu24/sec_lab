/*
// задание 1

using System;

class Program
{
    static int UnvisitedStones(int stones, int[] birds)
    {
        int[] visited = new int[stones];
        for (int b = 0; b < birds.Length; b++)
        {
            for (int i = 1; i <= stones; i++)
            {
                if (i % birds[b] == 0)
                {
                    visited[i - 1] += 1;
                }
            }
        }

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
        Console.WriteLine(UnvisitedStones(6, new int[] { 3, 2 })); // Результат: 2
        Console.WriteLine(UnvisitedStones(6, new int[] { 5, 1 })); // Результат: 0
    }
}
*/


/*
// задание 2
using System;
using System.Collections.Generic;

class Program
{
    static int NumUniqueEmails(string[] emails)
    {
        HashSet<string> uniqueEmails = new HashSet<string>();

        foreach (string email in emails)
        {
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
        string[] emails = {
            "merzovik69@mail.ru",
            "merzo.vik.69@mail.ru",
            "merzovik69@mail.ru"
        };
        Console.WriteLine(NumUniqueEmails(emails)); // Вывод: 2
    }
}
*/

//задание 3

/*
using System;
using System.Collections.Generic;

class Program
{
    static int SumOfDivisibleByThree(List<int> numbers)
    {
        int total = 0;
        foreach (int number in numbers)
        {
            foreach (char digit in number.ToString())
            {
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
        List<int> numbers = new List<int> { 3, 333, 570, 99 };
        Console.WriteLine(SumOfDivisibleByThree(numbers)); // Вывод: 27
    }
}
*/