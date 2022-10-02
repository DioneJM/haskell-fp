module AustralianBool where

data AustralianBool = YeahNah | NahYeah deriving Show

not :: AustralianBool -> AustralianBool
not YeahNah = NahYeah
not NahYeah = YeahNah