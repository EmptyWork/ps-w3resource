module W3Resource.NumberThree where

import Prelude

numberThree ∷ Int → Int → Boolean
numberThree n y
  | n == 30 || y == 30 = true
  | n + y == 30 = true
  | otherwise = false

numberThreeAlternative ∷ Int → Int → Boolean
numberThreeAlternative n y = if n == 30 || y == 30 then true else if n + y == 30 then true else false