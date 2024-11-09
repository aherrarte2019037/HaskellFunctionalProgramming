transpose :: [[a]] -> [[a]]
transpose matrix = map (\i -> map (\row -> row !! i) matrix) [0..(length (head matrix) - 1)]

sampleMatrix :: [[Int]]
sampleMatrix = [
    [1, 2, 3, 1],
    [4, 5, 6, 0],
    [7, 8, 9, -1]
    ]

formatMatrix :: Show a => [[a]] -> String
formatMatrix matrix = "[\n" ++ 
    concatMap (\row -> "    " ++ formatRow row ++ ",\n") (init matrix) ++
    "    " ++ formatRow (last matrix) ++ "\n]"
    where
        formatRow row = "[" ++ 
            concatMap (\x -> show x ++ ", ") (init row) ++ 
            show (last row) ++ "]"

main :: IO ()
main = do
    putStrLn "Matriz original X ="
    putStrLn $ formatMatrix sampleMatrix
    putStrLn "\nMatriz transpuesta Y ="
    putStrLn $ formatMatrix (transpose sampleMatrix)