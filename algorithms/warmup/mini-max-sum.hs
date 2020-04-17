module Main where

import Data.List (sort)

maxSum :: [Int] -> Int
maxSum arr = sum $ init $ sort arr

minSum :: [Int] -> Int
minSum arr = sum $ tail $ sort arr

main :: IO ()
main = do
  line <- getLine
  let arr = map read $ words line
      max = maxSum arr
      min = minSum arr
  putStrLn $ show max ++ " " ++ show min