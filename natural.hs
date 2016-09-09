data Natural = Zero | Succ Natural deriving Show

instance Eq Natural where
  Zero == Zero = True
  (Succ _) == Zero = False
  Zero == (Succ _) = False
  (Succ x) == (Succ y) = x == y

instance Ord Natural where
  compare Zero Zero = EQ
  compare (Succ _) Zero = GT
  compare Zero (Succ _) = LT
  compare (Succ x) (Succ y) = compare x y

-- (Succ (Succ (Succ Zero)))
toInt :: Natural -> Int
toInt Zero = 0
toInt (Succ x) = 1 + toInt x

-- (Succ (Succ Zero)) `add` (Succ Zero)
add :: Natural -> Natural -> Natural
add Zero y = y
add (Succ x) y = Succ (add x y)
