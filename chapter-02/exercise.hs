module Chapter2Exercise where

waxOn = x * 5 where
    z = 7
    y = z + 8
    x = y ^ 2

triple x = x * 3

square x = x * x
divideByTen x = x / 10

waxOff x = divideByTen $ square $ triple x