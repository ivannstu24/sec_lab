Haskell 

-- Задание 1
unvisitedStones :: Int -> Int -> [Int] -> Int
unvisitedStones n stones birds = length $ filter (== 0) visited
    where
        visited = map (\i -> length $ filter (\bird -> i `mod` bird == 0) birds) [1..stones]

main :: IO ()
main = do
    print $ unvisitedStones 2 6 [3, 2]  -- Результат: 2
    print $ unvisitedStones 2 6 [5, 1]  -- Результат: 0




--задание 2

import Data.List (nub)

numUniqueEmails :: [String] -> Int
numUniqueEmails emails = length uniqueEmails
  where
    uniqueEmails = nub $ map processEmail emails

processEmail :: String -> String
processEmail email = local ++ "@" ++ domain
  where
    (local, domain) = break (== '@') email
    local' = filter (/= '.') local
    local'' = takeWhile (/= '+') local'

emails = [
    "merzovik69@mail.ru",
    "merzo.v69@mail.ru",
    "merzovik69@mail.ru"
  ]

main = print $ numUniqueEmails emails



-- Задание 3
sumOfDivisibleByThree :: [Int] -> Int
sumOfDivisibleByThree numbers = sum [read [d] | n <- numbers, d <- show n, digitDivisibleByThree d]
    where
        digitDivisibleByThree :: Char -> Bool
        digitDivisibleByThree d = (read [d] :: Int) `mod` 3 == 0

main :: IO ()
main = do
    let numbers = [3, 333, 570, 99]
    print (sumOfDivisibleByThree numbers)
