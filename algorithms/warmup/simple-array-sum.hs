module Main where

main :: IO()
main  = do
  n <- readLn :: IO Int
  input <- getLine
  let w = words input
  let numbers = map read w :: [Int]
  let total = sum numbers
  print total