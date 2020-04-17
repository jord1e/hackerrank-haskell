module Main where

main :: IO ()
main = do
  line1 <- getLine
  line2 <- getLine
  let a = map read (words line1) :: [Int]
      b = map read (words line2) :: [Int]
      points = zipWith (-) a b
      scoreA = length (filter (> 0) points)
      scoreB = length (filter (< 0) points)
  putStrLn (show scoreA ++ " " ++ show scoreB)