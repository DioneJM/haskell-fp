module PointFree where

-- Point free is a style of function composition where the arguments aren't specified
-- A non point free style function
f xs = negate . sum $ xs
-- Point free
-- This type definition is required because if it isn't then the of the args become ambiguous
f2 :: (Num c, Foldable t) => t c -> c
f2 = negate . sum

myPrint :: Show a => a -> IO ()
myPrint = putStrLn . show

data Greeting = Hello | Hi deriving Show

negateG :: Greeting -> Greeting
negateG Hello = Hi
negateG Hi = Hello
