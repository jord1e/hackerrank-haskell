module Main where

main :: IO ()
main = do
  n <- readLn :: IO Int
  putStrLn . unlines $ zipWith (\idx xs -> replicate idx ' ' ++ replicate xs '#') (reverse [0 .. n - 1]) [1 ..]