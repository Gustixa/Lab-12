import Data.List

key :: String
key = "make"
dict :: [[(String, String)]]
dict = [[("make","Nokia"), ("model","216"), ("color","Black")],
    [("make","Apple"), ("model","2"), ("color","Silver")],
    [("make","Huawei"), ("model","50"), ("color","Gold")],
    [("make","Samsung"), ("model","7"), ("color","Blue")]]
getVal :: String -> [(String, String)] -> Either Int String
getVal key dict = case key of
    "model" -> Left (read $ snd $ head $ filter (\(k, v) -> k == key) dict)
    _       -> Right (snd $ head $ filter (\(k, v) -> k == key) dict)
sortDict :: String -> [[(String, String)]] -> [[(String, String)]]
sortDict key xs = sortBy (\x y -> compare (getVal key x) (getVal key y)) xs
main :: IO ()
main = print $ sortDict key dict

-- [[("make","Apple"),("model","2"),("color","Silver")],[("make","Huawei"),("model","50"),("color","Gold")],[("make","Nokia"),("model","216"),("color","Black")],[("make","Samsung"),("model","7"),("color","Blue")]]