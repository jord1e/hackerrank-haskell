import Data.List (group, nub, unfoldr)

createGroups :: [a] -> [(a, a)]
createGroups [] = []
createGroups (x:xs) = map ((,) x) xs ++ createGroups xs

isAlternating2 :: Eq a => [a] -> Bool
isAlternating2 [] = False
isAlternating2 [_, _] = True
isAlternating2 (x:y:xs) = (x == head xs) && isAlternating2 (y : xs)

solve :: String -> Int
solve xs
  | length unique == 1 = 0
  | otherwise = maximum $ map solve' (createGroups unique)
  where
    unique = nub xs
    solve' (a, b)
      | isAlternating2 diff = length diff
      | otherwise = 0
      where
        diff = filter (\x -> x == a || x == b) xs

main = interact $ show . solve . last . words