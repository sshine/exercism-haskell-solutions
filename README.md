# Haskell Core track

 - [`leap`](haskell-exercises/leap/src/LeapYear.hs): The `isLeapYear` function
   already exists as a library function. DRY.
 - [`space-age`](haskell-exercises/space-age/src/SpaceAge.hs): The number of
   seconds in an Earth year is somewhat of an unrecognizable size, so factorize
   and name it. The orbital period for each planet is calculated separate from
   `ageOn` to clarify and avoid code duplication.
 - [`pangram`](haskell-exercises/pangram/src/Pangram.hs): Convert `Text` to
   `Set Char` and check that the alphabet is a subset of this. Lowercase the
   `Set Char` to avoid duplicate work. This way the input text is only
   traversed once.
 - [`bob`](haskell-exercises/pangram/src/Bob.hs): Respond to `Text` with total,
   guarded predicates. Avoid partial functions like `last`, and avoid creating
   new `Text` values when `Text.any` and `Text.all` are sufficient to determine
   when yelling.
 - [`collatz-conjecture`](haskell-exercises/collatz-conjecture/src/CollatzConjecture.hs):
   Separate counting, calculating the next Collatz number, and recursion.
