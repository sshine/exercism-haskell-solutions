module SumOfMultiples (sumOfMultiples) where

import qualified Data.Set as Set
import           Data.Set (Set)

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit =
  Set.foldl' f 0 . Set.powerSet . Set.fromList $ factors
  where f acc = (acc +) . sumOneTerm limit . signedLcmOf

signedLcmOf :: Set Integer -> Integer
signedLcmOf fs
  | null fs = 0
  | otherwise = Set.foldl' lcmWithSign (-1) fs

lcmWithSign :: Integer -> Integer -> Integer
lcmWithSign a b = a * (negate . abs) b `div` gcd a b

sumOneTerm :: Integer -> Integer -> Integer
sumOneTerm _ 0 = 0
sumOneTerm n a =
  let d = (n - 1) `div` abs a
  in a * d * (d + 1) `div` 2
