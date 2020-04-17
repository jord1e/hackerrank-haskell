angryProfessor :: [Int] -> Bool
angryProfessor (k:a) = (< k) $ length $ filter (<= 0) a

solve :: [Int] -> [Bool]
solve [] = []
solve (n:xs) = angryProfessor (fst split) : solve (snd split)
  where
    split = splitAt (n + 1) xs

yn :: Bool -> String
yn b
  | b = "YES"
  | otherwise = "NO"

main = interact $ unlines . map yn . solve . tail . map read . words