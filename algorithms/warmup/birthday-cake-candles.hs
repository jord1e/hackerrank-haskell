module Main where

import Data.List (group, sortOn)
import Data.Ord

main :: IO ()
main = interact $ show . length . head . group . sortOn Down . (\x -> map read x :: [Int]) . tail . words