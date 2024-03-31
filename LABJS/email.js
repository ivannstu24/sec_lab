function numUniqueEmails(emails) {
    var uniqueEmails = new Set();

    for (var i = 0; i < emails.length; i++) {
        var email = emails[i];
        var parts = email.split('@');
        var local = parts[0];
        var domain = parts[1];

        // Удаляем все точки из локальной части
        local = local.replace(/\./g, '');

        // Если есть знак "+", то отбрасываем все после него
        if (local.includes('+')) {
            local = local.split('+')[0];
        }

        // Добавляем в множество обработанный адрес
        uniqueEmails.add(local + '@' + domain);
    }

    return uniqueEmails.size;
}

// Пример использования
var emails = [
    "merzovik69@mail.ru",
    "merzo.vik.69@mail.ru",
    "merzovik69@mail.ru", 
    "valera228@gmail.com"
];

// Вывод результата в HTML-страничку
var uniqueEmailCount = numUniqueEmails(emails);
document.getElementById('result').textContent = 'Количество уникальных адресов: ' + uniqueEmailCount;

// Вывод результата в консоль
console.log('Количество уникальных адресов: ' + uniqueEmailCount);
