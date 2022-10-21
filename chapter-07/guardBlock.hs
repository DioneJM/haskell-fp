module GuardBlock where

myAbs :: Integer -> Integer
myAbs x
    | x < 0 = (-x)
    | otherwise = x

doSomething :: Integer -> Integer -> String
doSomething x y
    | x > y = xGreaterThanY
    | x < y = xLessThanY
    | otherwise = xEqualsY
    where
        xGreaterThanY = "x is greater than y"
        xLessThanY = "x is less than y"
        xEqualsY = "x equals y"