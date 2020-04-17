import Data.List (sortOn)

solve :: [Int] -> [Int]
solve (n:xs) = map (inverse . inverse) [1 .. n]
  where
    inverse x = image !! (x - 1)
    image = map snd $ sortOn fst $ zip xs [1 ..]

main = interact $ unlines . map show . solve . map read . words