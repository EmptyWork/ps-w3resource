module W3Resource.NumberFive where

import Prelude

numberFive ∷ Int → Boolean
numberFive x = (mod x 3 == 0) || (mod x 7 == 0)