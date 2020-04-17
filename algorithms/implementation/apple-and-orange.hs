applesAndOranges :: [Int] -> [Int]
applesAndOranges (s:t:a:b:m:_:xs) = map (length . filter inHouse) [apples, oranges]
  where
    inHouse x = x >= s && x <= t
    apples = map (a +) $ take m xs
    oranges = map (b +) $ drop m xs

main = interact $ unlines . map show . applesAndOranges . map read . words