main :: IO ()
main = interact $ unlines . map (show . (+ 1) . read) . tail . words