main :: IO ()
main = interact $ show . (\[b, a] -> ceiling $ 2 * a / b) . map read . words