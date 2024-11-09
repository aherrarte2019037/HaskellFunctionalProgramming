import Data.List (sortBy, nub)
import Data.Ord (comparing)

type Dict = [(String, Value)]
data Value = VString String | VInt Int | VFloat Float
    deriving (Show, Eq)

getKeys :: [Dict] -> [String]
getKeys dicts = nub $ concatMap (map fst) dicts

sortDictsByKey :: String -> [Dict] -> [Dict]
sortDictsByKey key = sortBy (comparing (getValue key))
  where
    getValue k dict = case lookup k dict of
        Just (VInt n)    -> n
        Just (VFloat f)  -> round f
        _               -> 0

sampleData :: [Dict]
sampleData = [
    [("make", VString "Nokia"), 
     ("model", VInt 216), 
     ("color", VString "Black"),
     ("storage", VInt 64),
     ("price", VFloat 299.99)],
    [("make", VString "Apple"), 
     ("model", VInt 2), 
     ("color", VString "Silver"),
     ("storage", VInt 128),
     ("price", VFloat 999.99)],
    [("make", VString "Huawei"), 
     ("model", VInt 50), 
     ("color", VString "Gold"),
     ("storage", VInt 256),
     ("price", VFloat 599.99)],
    [("make", VString "Samsung"), 
     ("model", VInt 7), 
     ("color", VString "Blue"),
     ("storage", VInt 512),
     ("price", VFloat 799.99)]
    ]

showKeysMenu :: [String] -> IO ()
showKeysMenu keys = do
    putStrLn "\nKeys disponibles para ordenar:"
    mapM_ (\(i, k) -> putStrLn $ show i ++ ". " ++ k) $ zip [1..] keys

formatValue :: Value -> String
formatValue (VString s) = "'" ++ s ++ "'"
formatValue (VInt n) = show n
formatValue (VFloat f) = show f

formatDict :: Dict -> String
formatDict dict = concat [
    "'make': " ++ formatValue (getValue "make") ++ ", " ++
    "'model': " ++ formatValue (getValue "model") ++ ", " ++
    "'color': " ++ formatValue (getValue "color") ++ ", " ++
    "'storage': " ++ formatValue (getValue "storage") ++ ", " ++
    "'price': " ++ formatValue (getValue "price")
    ]
    where
        getValue k = case lookup k dict of
            Just v -> v
            Nothing -> VString ""

formatOutput :: [Dict] -> String
formatOutput dicts = "D = [" ++ intercalateWithLineBreaks (map formatDict dicts) ++ "]"
    where
        intercalateWithLineBreaks [] = ""
        intercalateWithLineBreaks [x] = x
        intercalateWithLineBreaks (x:xs) = x ++ ",\n     " ++ intercalateWithLineBreaks xs

main :: IO ()
main = do
    let keys = getKeys sampleData
    showKeysMenu keys
    putStrLn "\nIngrese el número de la key por la cual desea ordenar: "
    choice <- getLine
    let selectedKey = keys !! (read choice - 1)
    let sortedData = sortDictsByKey selectedKey sampleData
    putStrLn $ "\nDatos ordenados por '" ++ selectedKey ++ "':"
    putStrLn $ formatOutput sortedData