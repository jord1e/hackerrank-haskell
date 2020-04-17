divisibleSumPairs :: Int -> [Int] -> Int
divisibleSumPairs k [] = 0
divisibleSumPairs k (x:xs) = divisibleSumPairs k xs + length matches
  where
    matches = filter (\y -> (x + y) `mod` k == 0) xs

solve :: [Int] -> Int
solve (_:k:xs) = divisibleSumPairs k xs

main = interact $ show . solve . map read . words