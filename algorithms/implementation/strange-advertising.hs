viralAdvertising :: Int -> Int
viralAdvertising 1 = 2
viralAdvertising n = viralAdvertising (n - 1) * 3 `div` 2

solve :: Int -> Int
solve 0 = 0
solve n = solve (n - 1) + viralAdvertising n

main = interact $ show . solve . read