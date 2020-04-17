type Point = (Int, Int)

reflect :: Point -> Point -> Point
reflect (px, py) (qx, qy) = (x', y')
  where
    x' = 2 * qx - px
    y' = 2 * qy - py

solve :: [Int] -> [Point]
solve [] = []
solve (px:py:qx:qy:xs) = reflect (px, py) (qx, qy) : solve xs

main = interact $ unlines . map (unwords . map show . \(x, y) -> [x, y]) . solve . map read . tail . words