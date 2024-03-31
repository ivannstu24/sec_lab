//задание 1

/*
package main

import "fmt"

func unvisitedStones(N, stones int, birds []int) int {
	visited := make([]int, stones)
	for _, bird := range birds {
		for i := 1; i <= stones; i++ {
			if i%bird == 0 {
				visited[i-1]++
			}
		}
	}

	unvisitedCount := 0
	for _, count := range visited {
		if count == 0 {
			unvisitedCount++
		}
	}

	return unvisitedCount
}

func main() {
	fmt.Println(unvisitedStones(2, 6, []int{3, 2})) // Результат: 2
	fmt.Println(unvisitedStones(2, 6, []int{5, 1})) // Результат: 0
}
*/



/*
//Задание 2
package main

import (
	"fmt"
	"strings"
)

func numUniqueEmails(emails []string) int {
	uniqueEmails := make(map[string]bool)

	for _, email := range emails {
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
	emails := []string{
		"merzovik69@mail.ru",
		"merzo.vik.69@mail.ru",
		"merzovik69@mail.ru",
		"merzovik69@mail.ru",
		"helpme69@mail.ru",
		"help.me69@mail.ru",
	}
	fmt.Println(numUniqueEmails(emails)) // Вывод: 2
}
*/



/*
//Задание 3

package main

import (
	"fmt"
	"strconv"
)

func sumOfDivisibleByThree(numbers []int) int {
	total := 0

	for _, number := range numbers {
		for _, digit := range strconv.Itoa(number) {
			d, _ := strconv.Atoi(string(digit))
			if d%3 == 0 {
				total += d
			}
		}
	}

	return total
}

func main() {
	numbers := []int{3, 333, 5670, 99}
	fmt.Println(sumOfDivisibleByThree(numbers)) // Вывод: 36
}
*/