marsExploration :: String -> Int
marsExploration s = length $ filter (uncurry (/=)) $ zip s $ concat $ replicate (length s `div` 3) "SOS"
-- marsExploration s = sum $ zipWith eq s [0 ..]
--  where
--    eq x i = fromEnum $ (/=) x $ ("SOS" !!) $ i `mod` 3
--marsExploration s = sum $ zipWith (\x i -> fromEnum $ x == sos i) s [0 ..]
--  where
--    sos i
--      | (i `mod` 3) `mod` 2 == 0 = 'S'
--      | otherwise = 'O'

main = interact $ show . marsExploration