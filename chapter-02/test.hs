sayHello :: String -> IO ()
sayHello x = putStrLn ("Hello, " ++ x ++ "!")

triple x = x * 3
half x = x / 2
square x = x * x

areaOfCircle r = pi * square r
areaOfCirclePrefix r = (*) pi (square r)

times a b = a * b
timesInfix a b = a `times` b

-- this is a single line comment
identity a = id a
{-
This is a
multi
line comment
-}

integralDivision :: Int -> Int -> Int
integralDivision a b = div a b

fractionalDivision :: Float -> Float -> Float
fractionalDivision a b = a / b

-- $ operator -> f $ a = f a
-- basically the $ operator takes a function `f` and an expression `a`
-- this operator is helpful when you want to force the evaluation of the right side of the operator
-- before applying it to a function
-- this is especially helpful to simplify an expression
firstExpression = (2^) (2 + 2)
secondExpression = (2^) $ 2 + 2
isEquivalent :: Bool
isEquivalent = firstExpression == secondExpression