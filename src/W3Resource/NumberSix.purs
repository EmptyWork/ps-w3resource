module W3Resource.NumberSix where

import Prelude

numberSix ∷ Int -> Int -> Array Boolean
numberSix tempLow tempHigh = [isLowerThanTen, isHigherThanHundredTen] 
  where
    isLowerThanTen = tempLow < 0
    isHigherThanHundredTen = tempHigh > 100

numberSixAlternative ∷ Int → Int → Array Boolean
numberSixAlternative tempLow tempHigh = [tempLow < 0, tempHigh > 100]

{- TODO: need to learn how this should work -}
-- numberSixAlternative2 ∷ Int -> Int -> Array Boolean
-- numberSixAlternative2 tempLow tempHigh = do
--   isLowerThanTen <- tempLow < 0 
--   isHigherThanHundredTen <- tempHigh > 100
--   pure $ [isLowerThanTen, isHigherThanHundredTen]
