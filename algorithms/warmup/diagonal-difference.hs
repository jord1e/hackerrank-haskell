module Main where

import Data.List (transpose)

readMatrix :: Int -> IO [String]
readMatrix 0 = return []
readMatrix n = do
  x <- getLine
  xs <- readMatrix (n - 1)
  return (x : xs)

primaryDiagonal :: [[a]] -> [a]
primaryDiagonal matrix = zipWith (!!) matrix [0..]

secondaryDiagonal :: [[a]] -> [a]
secondaryDiagonal = primaryDiagonal . reverse . transpose

diagonalDifference :: [[Int]] -> Int
diagonalDifference matrix = abs $ sum (primaryDiagonal matrix) - sum (secondaryDiagonal matrix)

main :: IO()
main = do
  n <- readLn :: IO Int
  stringMatrix <- readMatrix n
  let matrix = map (map read . words) stringMatrix
      diff = diagonalDifference matrix
  print diff
