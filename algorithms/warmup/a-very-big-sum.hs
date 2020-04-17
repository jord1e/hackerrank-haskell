module Main where

main :: IO()
main = do
  _ <- getLine
  line <- getLine
  print . sum . map read $ words line