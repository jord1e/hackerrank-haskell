numIncreased :: [Int] -> Int
numIncreased arr = 0


numDecreased :: [Int] -> Int
numDecreased arr = 0

main = interact $ unwords . map show . zipWith ($) [numIncreased, numDecreased] . replicate 2 . map read . tail . words