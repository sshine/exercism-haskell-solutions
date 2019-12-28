{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ViewPatterns #-}
module Bob (responseFor) where

import           Data.Char (isUpper, isLower)
import qualified Data.Text as Text
import           Data.Text (Text)

responseFor :: Text -> Text
responseFor (Text.stripEnd -> s)
  | isSilent s = "Fine. Be that way!"
  | isYelling s && isAsking s = "Calm down, I know what I'm doing!"
  | isYelling s = "Whoa, chill out!"
  | isAsking s = "Sure."
  | otherwise = "Whatever."

isSilent, isYelling, isAsking :: Text -> Bool
isSilent = Text.null
isYelling = (&&) <$> Text.any isUpper <*> Text.all (not . isLower)
isAsking = ("?" `Text.isSuffixOf`)
