import Data.List (group)

superReducedString :: String -> String
superReducedString s
  | null result = "Empty String"
  | otherwise = result
  where
    result = reduce' s 1
    reduce' str n
      | n >= length str = str
      | (str !! n) == (str !! (n - 1)) = reduce' (take (n - 1) str ++ drop (n + 1) str) 1
      | otherwise = reduce' str (n + 1)

main = interact superReducedString