module GreetIfCool1 where

greetIfCool :: String -> IO ()
greetIfCool coolness =
    if cool
        then putStrLn "eyyyyyyyyy. What's shakin'???"
    else
        putStrLn "pshhhhh. Loaser."
   where cool = coolness == "downright frosty yo"