import Data.Char (isLower, isNumber, isUpper)

solve :: String -> Int
solve s = max (6 - length s) o
  where
    o = length $ filter (not . flip any s) predicates
    predicates = [isLower, isUpper, isNumber, (`elem` "!@#$%^&*()-+")]

main = interact $ show . solve . last . words
-- o = length $ filter (`none` s) predicates
-- o = sum $ map (fromEnum . not . flip any s) predicates