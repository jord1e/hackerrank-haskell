roundGrade :: Int -> Int
roundGrade grade
  | grade >= 38 && nm5 - grade < 3 = nm5
  | otherwise = grade
  where
    nm5 = grade + (5 - grade `mod` 5)

main = interact $ unlines . map (show . roundGrade . read) . tail . words