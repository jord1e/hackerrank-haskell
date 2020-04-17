module Main where

import Data.List (genericLength)
import Text.Printf (printf)

main :: IO()
main = do
  n <- readLn :: IO Int
  line <- getLine
  let array = map read $ words line :: [Int]
      numerators = [filter (> 0) array, filter (< 0) array, filter (== 0) array]
      fractions = map (\x -> genericLength x / realToFrac n) numerators :: [Float]
  mapM_ (printf "%.6f\n") fractions
