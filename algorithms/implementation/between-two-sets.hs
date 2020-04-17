getTotalX :: [Int] -> Int
getTotalX (n:_:xs) = length $ filter isFactor $ enumFromThenTo lcm_a (lcm_a * 2) gcd_b
  where
    isFactor x = gcd_b `mod` x == 0
    lcm_a = foldl1 lcm $ take n xs
    gcd_b = foldl1 gcd $ drop n xs

main = interact $ show . getTotalX . map read . words