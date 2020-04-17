jumpingOnClouds :: Int -> Int -> Int -> [Int] -> Int
jumpingOnClouds n e k c = e - penalty k - cloudRecursion k
  where
    cloudRecursion 0 = 0
    cloudRecursion i = penalty next + cloudRecursion next
      where
        next = (i + k) `mod` n
    penalty i -- 1 + 2 * (c !! i)
      | i >= n = 0
      | (c !! i) == 1 = 3
      | otherwise = 1

-- n could be replaced with _, but you would need to replace all occurrences in the jumpingOnClouds function with length c
solve :: [Int] -> Int
solve (n:k:c) = jumpingOnClouds n 100 k c

-- Below does not work
-- solve (n:k:c) = (-) 100 $ sum $ map penalty [0,k..n]
--  where
--    penalty i
--      | i >= n = 0
--      | otherwise = 1 + 2 * (c !! i)

main = interact $ show . solve . map read . words