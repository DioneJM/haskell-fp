module Currying where

subtractStuff :: Integer -> Integer -> Integer
subtractStuff x y = x - y

subtractStuff2 :: Integer -> Integer -> Integer
-- using an anonymous function
subtractStuff2 x = (\y -> x - y)

-- Haskell curries functions by default
curriedAdd :: Num a => a -> a -> a
curriedAdd a b = a + b

-- You can also un-curry a function by requiring a tuple instead
uncurriedAdd :: Num a => (a, a) -> a
uncurriedAdd (a,b) = a + b

curriedUncurriedAdd :: Num a => a -> a -> a
curriedUncurriedAdd a b = curry uncurriedAdd a b