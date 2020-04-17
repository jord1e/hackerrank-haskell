circularArrayRotation :: Int -> Int -> [Int] -> Int
circularArrayRotation k m xs -- (n - (k % n) + m) % n
  | pos >= 0 = xs !! pos
  | otherwise = xs !! (pos + n)
  where
    n = length xs -- Could be passed as an argument but that would make it less modular
    rot = k `mod` n -- Same as above
    pos = m - rot

solve :: Int -> [Int] -> [Int] -> [Int]
solve _ _ [] = []
solve k nums (m:indices) = circularArrayRotation k m nums : solve k nums indices

preSolve :: [Int] -> [Int]
preSolve (n:k:_:xs) = solve k (take n xs) (drop n xs)

main = interact $ unlines . map show . preSolve . map read . words