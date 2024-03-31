function unvisitedStones(N, stones, birds) {
    let visited = new Array(stones).fill(0);
    for (let bird of birds) {
        for (let i = 1; i <= stones; i++) {
            if (i % bird === 0) {
                visited[i - 1] += 1;
            }
        }
    }

    let unvisitedCount = 0;
    for (let count of visited) {
        if (count === 0) {
            unvisitedCount += 1;
        }
    }

    return unvisitedCount;
}

// Примеры использования:
document.getElementById('b_result1').textContent = 'Результат 1: ' + unvisitedStones(2, 6, [3, 2]);
document.getElementById('b_result2').textContent = 'Результат 2: ' + unvisitedStones(2, 6, [5, 1]);

console.log('Результат 1: ' + unvisitedStones(2, 6, [3, 2]));
console.log('Результат 2: ' +unvisitedStones(2, 6, [5, 1]));