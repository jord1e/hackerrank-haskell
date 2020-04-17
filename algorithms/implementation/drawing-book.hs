pageCount :: [Int] -> Int
pageCount (n:p:_) = min front back
  where
    pages to = (to + 2) `div` 2
    front = pages p - 1
    back = pages n - front - 1
    -- Even simpler: min (p `div` 2) (n `div` 2 - p `div ` 2)

main = interact $ show . pageCount . map read . words