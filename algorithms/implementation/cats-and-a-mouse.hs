-- https://stackoverflow.com/a/12876438
group :: Int -> [a] -> [[a]]
group _ [] = []
group n l
  | n > 0 = take n l : group n (drop n l)
  | otherwise = error "Negative or zero n"

catAndMouse :: [Int] -> String
catAndMouse (x:y:z:_)
  | aDist < bDist = "Cat A"
  | aDist > bDist = "Cat B"
  | otherwise = "Mouse C"
  where
    aDist = abs (z - x)
    bDist = abs (z - y)

main = interact $ unlines . map catAndMouse . group 3 . map read . tail . words