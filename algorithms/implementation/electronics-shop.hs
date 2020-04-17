getMoneySpent :: [Int] -> Int
getMoneySpent (b:n:_:xs)
  | null affordable = -1
  | otherwise = maximum affordable
  where
    affordable = filter (<= b) $ map sum $ sequence [keyboards, drives]
    keyboards = take n xs
    drives = drop n xs

main = interact $ show . getMoneySpent . map read . words