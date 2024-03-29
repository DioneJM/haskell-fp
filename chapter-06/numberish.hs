
class Numberish a where
    fromNumber :: Integer -> a
    toNumber :: a -> Integer

newtype Age =
    Age Integer
    deriving (Eq, Show)

instance Numberish Age where
    fromNumber n = Age n
    toNumber (Age n) = n

newtype Year =
    Year Integer
    deriving (Eq, Show)

instance Numberish Year where
    fromNumber n = Year n
    toNumber (Year n) = n


sumNumberish :: Numberish a => a -> a -> a
sumNumberish a b = fromNumber summed
    where integerOfA = toNumber a
          integerOfB = toNumber b
          summed = integerOfA + integerOfB

works = sumNumberish (Age 10) (Age 10)
--fails = sumNumberish (Age 10) (Year 10)