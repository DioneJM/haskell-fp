module Arith4 where

roundTrip :: (Show a, Read a) => a -> a
roundTrip a = read (show a)

roundTripPf :: (Show a, Read a) => a -> a
roundTripPf = (read . show)

roundTrip3 :: (Show a, Read b) => a -> b
roundTrip3 = (read . show)

main = do
    print (roundTrip 4)
    print (id 4)
mainPf = do
    print (roundTripPf 4)
    print (id 4)
    print (roundTrip3 4 :: Int)
