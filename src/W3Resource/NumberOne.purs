module W3Resource.NumberOne where

import Prelude

numberOne ∷ Int → Int → Int
numberOne n y = if n == y then (n + y) * 3 else n + y
