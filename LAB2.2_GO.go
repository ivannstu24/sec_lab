/* 
// Задание 1

package main

import "fmt"

// Функция для подсчета количества непосещенных камней
func unvisitedStones(N, stones int, birds []int) int {
    // Создаем срез для хранения информации о посещенных камнях, инициализируем его нулями
	visited := make([]int, stones)
    // Проходим по каждой птице в списке
	for _, bird := range birds {
        // Проходим по каждому камню от 1 до количества камней
		for i := 1; i <= stones; i++ {
            // Если номер камня делится на номер птицы без остатка, увеличиваем счетчик посещений для этого камня
			if i%bird == 0 {
				visited[i-1]++
			}
		}
	}

    // Считаем количество непосещенных камней
	unvisitedCount := 0
	for _, count := range visited {
		if count == 0 {
			unvisitedCount++
		}
	}

	return unvisitedCount
}

func main() {
    // Пример вызова функции и вывод результатов
	fmt.Println(unvisitedStones(2, 6, []int{3, 2})) // Результат: 2
	fmt.Println(unvisitedStones(2, 6, []int{5, 1})) // Результат: 0
}
*/



/*

// Задание 2

package main

import (
	"fmt"
	"strings"
)

// Функция для подсчета количества уникальных email адресов
func numUniqueEmails(emails []string) int {
	uniqueEmails := make(map[string]bool)

    // Проходим по каждому email в массиве
	for _, email := range emails {
        // Разделяем email на локальную часть и домен
		parts := strings.Split(email, "@")
		local := parts[0]
		domain := parts[1]

		// Удаляем все точки из локальной части
		local = strings.ReplaceAll(local, ".", "")

		// Если есть знак "+", то отбрасываем все после него
		if strings.Contains(local, "+") {
			local = strings.Split(local, "+")[0]
		}

		// Добавляем в множество обработанный адрес
		uniqueEmails[local+"@"+domain] = true
	}

	return len(uniqueEmails)
}

func main() {
    // Пример входных данных
	emails := []string{
		"merzovik69@mail.ru",
		"merzo.vik.69@mail.ru",
		"merzovik69@mail.ru",
		"merzovik69@mail.ru",
		"helpme69@mail.ru",
		"help.me69@mail.ru",
	}
    // Выводим результат работы функции
	fmt.Println(numUniqueEmails(emails)) // Вывод: 2
}

*/



/*
// Задание 3

package main

import (
	"fmt"
	"strconv"
)

// Функция для подсчета суммы цифр чисел, делящихся на 3
func sumOfDivisibleByThree(numbers []int) int {
	total := 0

    // Проходим по каждому числу в списке
	for _, number := range numbers {
        // Преобразуем число в строку и проходим по каждому символу
		for _, digit := range strconv.Itoa(number) {
            // Преобразуем символ обратно в число
			d, _ := strconv.Atoi(string(digit))
            // Если цифра делится на 3 без остатка, добавляем ее к общей сумме
			if d%3 == 0 {
				total += d
			}
		}
	}

	return total
}

func main() {
    // Пример входных данных
	numbers := []int{3, 333, 5670, 99}
    // Выводим результат работы функции
	fmt.Println(sumOfDivisibleByThree(numbers)) // Вывод: 36
}

*/
