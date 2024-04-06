function numUniqueEmails(emails) {
    var uniqueEmails = new Set();

    for (var i = 0; i < emails.length; i++) {
        var email = emails[i];
        var parts = email.split('@');
        var local = parts[0];
        var domain = parts[1];

        // Проверка на начало адреса с точки
        if (local.startsWith('.')) {
            throw new Error("Адрес начинается с недопустимого символа '.'");
        }

        // Удаляем все точки из локальной части
        local = local.replace(/\./g, '');

        // Если есть знак "+", то отбрасываем все после него
        if (local.includes('+')) {
            local = local.split('+')[0];
        }

        // Проверка на наличие символа "&" в локальной части
        if (local.includes('&')) {
            throw new Error("Адрес содержит недопустимый символ '&'");
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
    "valera8@gmail.com"
];

try {
    // Вывод результата в HTML-страничку
    var uniqueEmailCount = numUniqueEmails(emails);
    document.getElementById('result').textContent = 'Количество уникальных адресов: ' + uniqueEmailCount;

    // Вывод результата в консоль
    console.log('Количество уникальных адресов: ' + uniqueEmailCount);
} catch (error) {
    // Обработка ошибок
    console.error("Ошибка:", error.message);
}
