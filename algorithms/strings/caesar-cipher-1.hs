import Data.Char (isUpper, toLower, toUpper)
import Data.List (elemIndex)

caesarCipher :: Int -> String -> String
caesarCipher k = map rotc
  where
    alphabet = ['a' .. 'z']
    rotc c
      | isUpper c = toUpper result
      | otherwise = result
      where
        result =
          case elemIndex (toLower c) alphabet of
            Just i -> (alphabet !!) $ (i + k) `mod` length alphabet
            Nothing -> c

solve :: [String] -> String
solve [_, s, k] = caesarCipher (read k) s

main = interact $ solve . words