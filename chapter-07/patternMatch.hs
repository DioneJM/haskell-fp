module PatternMatch where

isTwo :: Integer -> Bool
-- you can set multiple definitions of a function to act as pattern matching statement
isTwo 2 = True
isTwo _ = False