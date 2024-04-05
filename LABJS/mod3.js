// Функция для подсчета суммы цифр чисел, делящихся на 3
function sumOfDivisibleByThree(numbers) {
    let total = 0;
    // Проходим по каждому числу в массиве
    for (let number of numbers) {
        // Преобразуем число в строку и разбиваем его на отдельные цифры
        let digits = number.toString().split('');
        // Проходим по каждой цифре числа
        for (let digit of digits) {
            // Если цифра делится на 3 без остатка, добавляем ее к общей сумме
            if (parseInt(digit) % 3 === 0) {
                total += parseInt(digit);
            }
        }
    }
    // Возвращаем общую сумму
    return total;
}

let numbers = [3, 333, 570, 99];
// Вызов функции для подсчета суммы чисел, делящихся на 3
let result = sumOfDivisibleByThree(numbers);

// Вывод результата в HTML-страничку
document.getElementById('result2').textContent = 'Сумма чисел, делящихся на 3: ' + result;
// Вывод результата в консоль
console.log('Сумма чисел, делящихся на 3: ' + result);
