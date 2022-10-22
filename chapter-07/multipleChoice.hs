
f :: Ord a => a -> a -> Bool
f x y = case compare x y of
    LT -> False
    GT -> False
    otherwise -> True

tensDigit :: Integral a => a -> a
tensDigit x = d
    where
        xLast = x `div` 10
        d = xLast `mod` 10


tensDigitRewrite :: Integral a => a -> a
tensDigitRewrite x = (snd . divModTen . fst . divModTen) x
    where divModTen x = divMod x 10
--hundredsDigit x = (snd . divModHundred . fst . divModHundred . fst . divModHundred) x
