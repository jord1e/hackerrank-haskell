main = interact $ unlines . map (show . shakes . read) . tail . words
  where
    shakes n = (n * (n - 1)) `div` 2