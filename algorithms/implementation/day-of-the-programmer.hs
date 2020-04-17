dayOfTheProgrammer :: Int -> String
dayOfTheProgrammer y
  | y == 1918 = "26.09.1918"
  | isLeapYear = "12.09." ++ show y
  | otherwise = "13.09." ++ show y
  where
    isGregorianLeapYear = (y `mod` 400 == 0) || (y `mod` 4 == 0) && (y `mod` 100 /= 0)
    isJulianLeapYear = y `mod` 4 == 0
    isLeapYear = y >= 1919 && isGregorianLeapYear || isJulianLeapYear

main = interact $ dayOfTheProgrammer . read