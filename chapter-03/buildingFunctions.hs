module BuildingFunctionsExercise where

exerciseA :: String -> String
exerciseA input = input ++ "!"

exerciseB :: String -> String
exerciseB input = [last $ head $ words input]

exerciseC :: String -> String
exerciseC input = last $ words input

exerciseString = "Curry is awesome!"

runExercise :: String -> IO ()
runExercise inputString = do
    printExercise exerciseA
    printExercise exerciseB
    printExercise exerciseC
    where
        printExercise exerciseFunction = print $ exerciseFunction inputString

thirdLetter :: String -> Char
thirdLetter string = string !! 2

letterIndex :: Int -> Char
letterIndex i = exerciseString !! i

rvrs :: String -> String
rvrs string = (drop 9 string) ++ " " ++ (drop 6 $ take 8 string) ++ " " ++ (take 5 string)