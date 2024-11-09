import System.IO (hFlush, stdout)

calculatePowers :: Int -> [Int] -> [Int]
calculatePowers n = map (\x -> x ^ n)

initialList :: [Int]
initialList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

formatList :: [Int] -> String
formatList xs = "[" ++ foldr (++) "]" (map showNum (init xs) ++ [show (last xs)])
    where showNum x = show x ++ ", "

main :: IO ()
main = do
    putStr "Ingrese la potencia n a calcular: "
    hFlush stdout
    n <- readLn :: IO Int
    let result = calculatePowers n initialList
    putStrLn $ "\nLista original:"
    putStrLn $ formatList initialList
    putStrLn $ "\nResultado (elementos elevados a la " ++ show n ++ "):"
    putStrLn $ formatList result