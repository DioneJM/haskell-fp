{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType where

example = 1

-- Guess the type!

a :: Num a => a
a = (* 9) 6
-- reduces to
-- a = 6 * 9 -- nice
-- a = 54

b :: Num a => (a, String)
b = head [(0, "doge"), (1, "kitteh")]
-- reduces to
-- b = (0, "doge")

c :: (Integer, String)
c = head [(0 :: Integer, "doge"), (1, "kitteh")]
-- reduces to
-- c = (0 :: Integer, "doge")

d :: Bool
d = if False then True else False
-- reduces to
-- d = False

e :: Int
e = length [1, 2, 3, 4, 5]
-- reduces to
-- e = 5

f :: Bool
f = (length [1, 2, 3, 4]) > (length "TACOCAT")
-- reduces to
-- f = False

w :: Num a => a
w = y * 10 where
    x = 5
    y = x + 5

z :: Num a => a -> a
z y = y * 10

f2 :: Fractional a => a
f2 = 4 / y where
     x = 5
     y = x + 5

f3 :: String
f3 = x ++ y ++ z where
     x = "Julie"
     y = " <3 "
     z = "Haskell"

functionH :: [a] -> a
functionH (x:_) = x

functionC :: Ord a => a -> a -> Bool
functionC x y = if (x > y) then True else False

functionS :: (a,b) -> b
functionS (x, y) = y

myFunc :: (x->y) -> (y -> z) -> c -> (a,x) -> (a,z)
myFunc xToY yToZ _ (a, x) = (a, result) where
    result = yToZ $ xToY x

i :: a -> a
i a = a

c2 :: a -> b -> a
c2 a b = a

c'' :: b -> a -> b
c'' a b = c2 a b

cPrime :: a -> b -> b
cPrime a b = b

r :: [a] -> [a]
r xs = reverse xs

co :: (b -> c) -> (a -> b) -> a -> c
co bToC aToB a = bToC $ aToB a