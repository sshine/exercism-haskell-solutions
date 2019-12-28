module Grains (square, total) where

import Control.Applicative (Alternative)
import Control.Monad (guard)

square :: (Monad m, Alternative m, Integral i) => i -> m i
square n = do
  guard (n >= 1)
  guard (n <= 64)
  return (2 ^ (n - 1))

total :: Integral i => i
total = sum $ [1..64] >>= square
