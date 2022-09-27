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