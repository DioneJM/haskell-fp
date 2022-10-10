module TrivialTypeClass where

data Trivial = Trivial'

instance Eq Trivial where
    Trivial' == Trivial' = True
    
data DayOfWeek = Mon | Tues | Weds | Thu | Fri | Sat | Sun deriving Show
data Date = Date DayOfWeek Int deriving Show

instance Eq DayOfWeek where
    (==) Mon Mon = True
    Tues == Tues = True
    Weds == Weds = True
    Thu == Thu = True
    Fri == Fri = True
    Sat == Sat = True
    Sun == Sun = True
    _ == _ = False

instance Eq Date where
    Date weekday dayOfMonth == Date weekday' dayOfMonth' = weekday == weekday' && dayOfMonth == dayOfMonth'

    