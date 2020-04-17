canLand :: [Int] -> String
canLand (x1:v1:x2:v2:_)
  | v1 == v2 =
    if x1 == x2
      then "YES"
      else "NO"
  | n > 0 && fromInteger (round n) == n = "YES"
  | otherwise = "NO"
  where
    n = realToFrac (x1 - x2) / realToFrac (v2 - v1)

main = interact $ canLand . map read . words

-- (x1 - x2) % (v2 - v1) == 0