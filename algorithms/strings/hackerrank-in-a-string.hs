hackerrankInString :: String -> String
hackerrankInString s
  | inString' s "hackerrank" = "YES"
  | otherwise = "NO"
  where
    inString' _ [] = True
    inString' [] _ = False
    inString' (x:xs) hr@(h:hx)
      | x == h = inString' xs hx
      | otherwise = inString' xs hr

main = interact $ unlines . map hackerrankInString . tail . words