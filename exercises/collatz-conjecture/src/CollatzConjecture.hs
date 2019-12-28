module CollatzConjecture (collatz) where

import Data.List (elemIndex)

collatz :: Integer -> Maybe Integer
collatz n
  | n < 1 = Nothing
  | otherwise = toInteger <$> elemIndex 1 (iterate next n)
  where
    next :: Integer -> Integer
    next m
      | even m    = m `quot` 2
      | otherwise = 3 * m + 1

