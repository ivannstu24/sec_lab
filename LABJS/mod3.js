function sumOfDivisibleByThree(numbers) {
    let total = 0;
    for (let number of numbers) {
        let digits = number.toString().split('');
        for (let digit of digits) {
            if (parseInt(digit) % 3 === 0) {
                total += parseInt(digit);
            }
        }
    }
    return total;
}

let numbers = [3, 333, 570, 99];
let result = sumOfDivisibleByThree(numbers);

// Вывод результата в HTML-страничку
document.getElementById('result2').textContent = 'Сумма чисел, делящихся на 3: ' + result;
console.log('Сумма чисел, делящихся на 3: ' + result);