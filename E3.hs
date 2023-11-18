mat4 :: [[Int]]
mat4 = [[1, 2, 3, 1],
    [4, 5, 6, 0],
    [7, 8, 9, -1]]
lambda :: [[Int]]
lambda = map (\col -> map (!! col) mat4) [0..length (head mat4) - 1]
main :: IO ()
main = mapM_ print lambda

-- [ 1, 4,  7 ]
-- [ 2, 5,  8 ]
-- [ 3, 6,  9 ]
-- [ 1, 0, -1 ]