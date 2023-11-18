values :: [String]
values = ["rojo", "verde", "azul", "amarillo", "gris", "blanco", "negro"]
eliminate :: [String]
eliminate = ["amarillo", "café", "blanco"]
res :: [String]
res = filter (\x -> not (elem x eliminate)) values
main :: IO ()
main = print res

-- ["rojo","verde","azul","gris","negro"]