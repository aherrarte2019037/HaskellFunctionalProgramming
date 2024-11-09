import Data.List (notElem)

removeElements :: [String] -> [String] -> [String]
removeElements list toRemove = filter (\x -> x `notElem` toRemove) list

initialList :: [String]
initialList = ["rojo", "verde", "azul", "amarillo", "gris", "blanco", "negro"]

elementsToRemove :: [String]
elementsToRemove = ["amarillo", "café", "blanco"]

formatList :: [String] -> String
formatList xs = "[" ++ concatMap (\x -> "'" ++ x ++ "', ") (init xs) ++ "'" ++ last xs ++ "']"

main :: IO ()
main = do
    putStrLn "Lista inicial:"
    putStrLn $ formatList initialList
    putStrLn "\nElementos a eliminar:"
    putStrLn $ formatList elementsToRemove
    putStrLn "\nLista resultante:"
    putStrLn $ formatList (removeElements initialList elementsToRemove)