-- Задание 1

-- Функция для подсчета количества непосещенных камней
unvisitedStones :: Int -> Int -> [Int] -> Int
unvisitedStones n stones birds = length $ filter (== 0) visited
    where
        -- Создаем список посещений для каждого камня
        visited = map (\i -> length $ filter (\bird -> i `mod` bird == 0) birds) [1..stones]

main :: IO ()
main = do
    -- Вывод результатов
    print $ unvisitedStones 2 6 [3, 2]  -- Результат: 2
    print $ unvisitedStones 2 6 [5, 1]  -- Результат: 0


-- Задание 2

import Data.List (nub)

-- Функция для подсчета количества уникальных email адресов
numUniqueEmails :: [String] -> Int
numUniqueEmails emails = length uniqueEmails
  where
    -- Преобразовываем каждый email в уникальный формат и удаляем дубликаты
    uniqueEmails = nub $ map processEmail emails

-- Функция для обработки email адреса
processEmail :: String -> String
processEmail email = local ++ "@" ++ domain
  where
    -- Разделяем email на локальную часть и домен
    (local, domain) = break (== '@') email
    -- Удаляем точки из локальной части и игнорируем символы после символа '+'
    local' = filter (/= '.') local
    local'' = takeWhile (/= '+') local'

-- Примеры email адресов
emails = [
    "merzovik69@mail.ru",
    "merzo.v69@mail.ru",
    "merzovik69@mail.ru"
  ]

main = print $ numUniqueEmails emails


-- Задание 3

-- Функция для подсчета суммы цифр чисел, делящихся на 3
sumOfDivisibleByThree :: [Int] -> Int
sumOfDivisibleByThree numbers = sum [read [d] | n <- numbers, d <- show n, digitDivisibleByThree d]
    where
        -- Проверяем, делится ли цифра на 3
        digitDivisibleByThree :: Char -> Bool
        digitDivisibleByThree d = (read [d] :: Int) `mod` 3 == 0

main :: IO ()
main = do
    -- Пример чисел
    let numbers = [3, 333, 570, 99]
    -- Вывод результата
    print (sumOfDivisibleByThree numbers)
