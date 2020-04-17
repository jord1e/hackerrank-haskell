chocolateCombinations :: Int -> Int -> [Int] -> Int
chocolateCombinations d m xs
  | null xs = 0
  | sum (take m xs) == d = 1 + next
  | otherwise = next
  where
    next = chocolateCombinations d m (tail xs)

birthday :: [Int] -> Int
birthday (n:xs) = chocolateCombinations d m s
  where
    input = splitAt n xs
    s = fst input
    f xs = (head xs, last xs)
    (d, m) = f $ snd input

main = interact $ show . birthday . map read . words