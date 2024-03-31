/*
// Задание 2
import java.util.HashSet;


public class Main {
    public static int numUniqueEmails(String[] emails) {
        HashSet<String> uniqueEmails = new HashSet<>();

        for (String email : emails) {
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

        return uniqueEmails.size();
    }

    public static void main(String[] args) {
        String[] emails = {
                "merzovik69@mail.ru",
                "merzo.vik.69@mail.ru",
                "merzovik69@mail.ru",
                "mama69@mail.ru"
        };
        System.out.println(numUniqueEmails(emails)); // Вывод: 2
    }
}
*/

/*

//Задание 3
import java.util.ArrayList;

public class Main {
    public static int sumOfDivisibleByThree(ArrayList<Integer> numbers) {
        int total = 0;
        for (int number : numbers) {
            String numStr = String.valueOf(number);
            for (int i = 0; i < numStr.length(); i++) {
                int digit = Character.getNumericValue(numStr.charAt(i));
                if (digit % 3 == 0) {
                    total += digit;
                }
            }
        }
        return total;
    }

    public static void main(String[] args) {
        ArrayList<Integer> numbers = new ArrayList<>();
        numbers.add(3);
        numbers.add(333);
        numbers.add(570);
        numbers.add(99);
        System.out.println(sumOfDivisibleByThree(numbers)); // Вывод: 33
    }
}
*/

/*
//Задание 1

import java.util.Arrays;

public class Main {
    public static int unvisitedStones(int N, int stones, int[] birds) {
        int[] visited = new int[stones];
        Arrays.fill(visited, 0);

        for (int bird : birds) {
            for (int i = 1; i <= stones; i++) {
                if (i % bird == 0) {
                    visited[i - 1]++;
                }
            }
        }

        int unvisitedCount = 0;
        for (int count : visited) {
            if (count == 0) {
                unvisitedCount++;
            }
        }

        return unvisitedCount;
    }

    public static void main(String[] args) {
        System.out.println(unvisitedStones(2, 6, new int[]{3, 2})); // Результат: 2
        System.out.println(unvisitedStones(2, 6, new int[]{5, 1})); // Результат: 0
    }
}
*/