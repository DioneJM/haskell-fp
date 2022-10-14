
chk :: Eq b => (a -> b) -> a -> b -> Bool
chk aToB a b = aToB a == b