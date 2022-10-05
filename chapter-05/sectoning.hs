module Sectioning where

-- You can set the partial application of a function as a value
celebrate :: [Char] -> [Char]
celebrate = (++ " woot!")
-- celebrate "coding" - > "coding woot!"

anotherCelebrate :: [Char] -> [Char]
anotherCelebrate thing = thing ++ " woot!"

isNumberFromOneToTen :: Integer -> Bool
isNumberFromOneToTen = (`elem` [1..10])