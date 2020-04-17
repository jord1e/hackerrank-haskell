module Main where

convertTime :: String -> String
convertTime time
  | hh == "12" = (if pm then "12" else "00") ++ t
  | pm = show (read hh + 12) ++ t
  | otherwise = hh ++ t
  where
    split = splitAt 2 time
    hh = fst split
    xs = splitAt 6 $ snd split
    t = fst xs
    pm = snd xs == "PM"

main :: IO ()
main = interact convertTime