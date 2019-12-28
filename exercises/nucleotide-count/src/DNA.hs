module DNA (nucleotideCounts, Nucleotide(..)) where

import qualified Data.Map as Map
import           Data.Map (Map)
import           Text.Read (readEither)

data Nucleotide = A | C | G | T
  deriving (Eq, Ord, Show, Read, Enum, Bounded)

nucleotideCounts :: String -> Either String (Map Nucleotide Int)
nucleotideCounts = fmap (pad . frequencies) . traverse toNucleotide

toNucleotide :: Char -> Either String Nucleotide
toNucleotide c = readEither [c] <> Left ("Unknown nucleotide " ++ show c)

frequencies :: [Nucleotide] -> Map Nucleotide Int
frequencies = Map.fromListWith (+) . (`zip` [1,1..])

pad :: Map Nucleotide Int -> Map Nucleotide Int
pad = (`Map.union` emptyMap)

emptyMap :: Map Nucleotide Int
emptyMap = Map.fromListWith (+) (zip [minBound..] [0,0..])
