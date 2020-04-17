import Data.Foldable (foldl')

countingValleys :: String -> Int
countingValleys xs = snd $ foldl' f (0, 0) $ map ud xs
  where
    f (a, v) change
      | na == 0 && a < 0 = (na, v + 1)
      | otherwise = (na, v)
      where
        na = change a
    ud c
      | c == 'U' = (+) 1
      | c == 'D' = flip (-) 1

main = interact $ show . countingValleys . last . words