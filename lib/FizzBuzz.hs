{-
FizzBuzz
-}

main = mapM_ (putStrLn . fizzbuzz) [1..100]

data FizzBuzz = FizzBuzz | Fizz | Buzz
  deriving Show

-- | FizzBuzz
--
-- >>> map fizzbuzz [1..16]
-- ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz","16"]

fizzbuzz = either show show . fizzbuzz_

fizzbuzz_ n = f (n `rem` 3) (n `rem` 5)
  where
    f 0 0 = Right FizzBuzz
    f 0 _ = Right Fizz
    f _ 0 = Right Buzz
    f _ _ = Left  n
