module W3Resource.NumberFour where

import Prelude

numberFour ∷ Int → Boolean
numberFour x = (x >= 100 && x <= 110) || (x >= 200 && x <= 210)

numberFourAlternative ∷ Int → Boolean
numberFourAlternative x = 
  if x >= 100 && x <= 110 
    then true 
  else if x >= 200 && x <= 210 
    then true 
  else false

numberFourAlternative2 ∷ Int → Boolean
numberFourAlternative2 x 
  | x >= 100 && x <= 110 = true
  | x >= 200 && x <= 210 = true
  | otherwise = false