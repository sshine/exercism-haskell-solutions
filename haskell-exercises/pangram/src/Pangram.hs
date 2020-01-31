module Pangram (isPangram) where

import           Data.Char (toLower)
import qualified Data.Set as Set
import           Data.Text (Text)
import qualified Data.Text as Text

isPangram :: Text -> Bool
isPangram = (alphabet `Set.isSubsetOf`) . Set.map toLower . fromText
  where
    alphabet = Set.fromDistinctAscList ['a'..'z']
    fromText = Text.foldr Set.insert Set.empty
