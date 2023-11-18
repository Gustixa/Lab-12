n :: Int
n = 2
values :: [Int]
values = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
res :: [Int]
res = map (\x -> x ^ n) values
main :: IO ()
main = print res

-- [1,4,9,16,25,36,49,64,81,100]