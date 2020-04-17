import Data.List (transpose)

rotl :: [[a]] -> [[a]]
rotl = transpose . map reverse

baseSquare = [[2, 7, 6], [9, 5, 1], [4, 3, 8]]

magicSquares = map concat $ concatMap (take 4 . iterate rotl) [baseSquare, reverse baseSquare]

formingMagicSquare :: [Int] -> Int
formingMagicSquare xs = minimum $ map (sum . zipWith absoluteDifference xs) magicSquares
  where
    absoluteDifference = (abs .) . (-)

main = interact $ show . formingMagicSquare . map read . words