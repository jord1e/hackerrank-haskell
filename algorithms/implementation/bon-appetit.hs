import Data.Bifunctor

deleteN :: Int -> [a] -> [a]
deleteN n xs = uncurry (++) $ second tail $ splitAt n xs

bonAppetit :: [Int] -> String
bonAppetit (_:k:xs)
  | b > cost = show (b - cost)
  | otherwise = "Bon Appetit"
  where
    b = last xs
    items = init xs
    cost = truncate $ (/ 2) $ realToFrac $ sum $ deleteN k items

main = interact $ bonAppetit . map read . words