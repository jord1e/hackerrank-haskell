import Data.List (group, sort, minimumBy)
import Data.Ord

migratoryBirds :: [Int] -> Int
migratoryBirds (_:birds) = head $ minimumBy (comparing $ Down . length) (group $ sort birds)

main = interact $ show . migratoryBirds . map read . words