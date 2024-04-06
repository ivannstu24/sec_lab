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

func isEmailCorrect(email string) bool {
	// Проверка длины email-адреса
	length := len(email)
	if email[0] == '.' || email[length-1] == '.' {
		return false
	}
	if length < 6 || length > 30 {
		return false
	}

	// Проверка на наличие двух точек подряд
	if strings.Contains(email, "..") {
		return false
	}

	// Проверка наличия символа '&' в имени пользователя
	if strings.Contains(email, "&") {
		return false
	}

	// Проверка символов в email-адресе
	validChars := "abcdefghijklmnopqrstuvwxyz1234567890."
	for _, c := range email {
		if !strings.ContainsRune(validChars, c) && !strings.Contains("&=+<>,_'-", string(c)) {
			return false
		}
	}
	return true
}

func main() {
	emails := []string{
		".merzovlaik69@mail.ru",
		"merzo.vik.69@mail.ru",
		"merzovik69@mail.bru",
	}

	// Создаем мапу для хранения уникальных email-адресов
	uniqueEmails := make(map[string]bool)

	// Проверяем каждый email-адрес и добавляем его в мапу, если он корректен
	for _, email := range emails {
		// Разбиваем email-адрес на имя пользователя и домен
		parts := strings.Split(email, "@")
		emailName := parts[0]
		emailDomain := parts[1]

		// Удаляем символ '*' из имени пользователя
		emailName = strings.Split(emailName, "*")[0]

		// Проверяем корректность имени пользователя
		if !isEmailCorrect(emailName) {
			panic(fmt.Sprintf("Invalid email - %s", email))
		}

		// Удаляем точки из имени пользователя
		emailName = strings.ReplaceAll(emailName, ".", "")

		// Добавляем корректный email-адрес в мапу уникальных адресов
		uniqueEmails[emailName+"@"+emailDomain] = true
	}

	// Подсчитываем количество уникальных email-адресов
	fmt.Println(len(uniqueEmails))
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
