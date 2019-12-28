module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

ageOn :: Fractional f => Planet -> f -> f
ageOn planet seconds =
  seconds / earthYear / orbitalPeriod planet

orbitalPeriod :: Fractional f => Planet -> f
orbitalPeriod Mercury =   0.2408467
orbitalPeriod Venus   =   0.61519726
orbitalPeriod Earth   =   1.0
orbitalPeriod Mars    =   1.8808158
orbitalPeriod Jupiter =  11.862615
orbitalPeriod Saturn  =  29.447498
orbitalPeriod Uranus  =  84.016846
orbitalPeriod Neptune = 164.79132

earthYear :: Fractional f => f
earthYear = 365.25 * 24 * 60 * 60
