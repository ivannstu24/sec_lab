// Функция для подсчета количества непосещенных камней
function unvisitedStones(N, stones, birds) {
    // Создаем массив для хранения информации о посещенных камнях, инициализируем его нулями
    let visited = new Array(stones).fill(0);

    // Проходим по каждой птице в списке
    for (let bird of birds) {
        // Проходим по каждому камню от 1 до количества камней
        for (let i = 1; i <= stones; i++) {
            // Если номер камня делится на номер птицы без остатка, увеличиваем счетчик посещений для этого камня
            if (i % bird === 0) {
                visited[i - 1] += 1;
            }
        }
    }

    // Считаем количество непосещенных камней
    let unvisitedCount = 0;
    for (let count of visited) {
        if (count === 0) {
            unvisitedCount += 1;
        }
    }

    // Возвращаем количество непосещенных камней
    return unvisitedCount;
}

// Примеры использования:
document.getElementById('b_result1').textContent = 'Результат 1: ' + unvisitedStones(2, 6, [3, 2]);
document.getElementById('b_result2').textContent = 'Результат 2: ' + unvisitedStones(2, 6, [5, 1]);

console.log('Результат 1: ' + unvisitedStones(2, 6, [3, 2]));
console.log('Результат 2: ' +unvisitedStones(2, 6, [5, 1]));
