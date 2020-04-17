import Data.List (nub)

count :: Eq a => a -> [a] -> Int
count x = length . filter (x ==)

pickingNumbers :: [Int] -> Int
pickingNumbers (_:xs) = maximum $ map (\u -> count (u - 1) xs + count u xs) (nub xs)

main = interact $ show . pickingNumbers . map read . words