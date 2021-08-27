-- 1 2 3 4 5
-- 6 7 8 9 10
-- 1 4  

import Text.Printf (printf)

dx = 0.001

area :: Double -> Double -> [Double] -> [Double] -> Double
area val1 val2 mlps pows = ((curve mlps pows val1 + curve mlps pows val2)/2) * dx
    where
        curve :: [Double] -> [Double] -> Double -> Double
        curve mlps pows val = sum $ zipWith (curry fx) mlps pows
            where
                fx :: (Double, Double) -> Double
                fx (x, y) = x*(val**y)

-- This function should return a list [area, volume].
solve :: Double -> Double -> [Double] -> [Double] -> Double
solve l r a b = if l>=r then area l (l+dx) a b + solve (l+dx) r a b else 0

--Input/Output.
main :: IO ()
main = getContents >>= mapM_ (printf "%.1f\n"). (\[a, b, [l, r]] -> show(solve l r a b)). map (map read. words). lines