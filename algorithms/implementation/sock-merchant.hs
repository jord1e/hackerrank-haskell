import Data.List (group, sort)

sockMerchant :: [Int] -> Int
sockMerchant (_:xs) = sum $ map (flip div 2 . length) $ group $ sort xs

main = interact $ show . sockMerchant . map read . words