saveThePrisoner :: [Int] -> Int
saveThePrisoner (n:m:s:_) = (+ 1) $ (s - 1 + m - 1) `mod` n

solve :: [Int] -> [Int]
solve [] = []
solve xs = saveThePrisoner (fst s) : solve (snd s)
  where
    s = splitAt 3 xs

main = interact $ unlines . map show . solve . tail . map read . words