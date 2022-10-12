module Binary where

data Binary = Zero | One deriving Show

instance Num Binary where
    (+) Zero Zero = Zero
    (+) _ _ = One
    (-) Zero Zero = Zero
    (-) One One = Zero
    (-) _ _ = One
    (*) _ Zero = Zero
    (*) Zero _ = Zero
    (*) One One = One
    (negate) Zero = Zero
    (negate) One = One
    (abs) Zero = Zero
    (abs) One = One
    (signum) Zero = Zero
    (signum) One = One
    fromInteger 1 = One
    fromInteger _ = Zero

