module HigherOrderFunctions where


data Employee = Coder | Manager | Veep | CEO deriving (Eq, Ord, Show)

reportBoss :: Employee -> Employee -> IO ()
reportBoss boss employee = putStrLn $ show boss ++ " is the boss of " ++ show employee

employeeRank :: (Employee -> Employee -> Ordering) -> Employee -> Employee -> IO ()
employeeRank f e1 e2 = case f e1 e2 of
    GT -> reportBoss e1 e2
    EQ -> putStrLn "Neither employee is the boss"
    LT -> reportBoss e2 e1