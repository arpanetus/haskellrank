distance :: ((Int, Int), (Int, Int)) -> Int
distance ((x, y), (a, b)) = abs(a - x) + abs(b - y)

perimeter :: [(Int, Int)] -> Int
perimeter points = let apd = appendhead points in sum $ map (distance) (zip apd (tail apd)) 

appendhead (x:xs) = (x:xs) ++ [x]