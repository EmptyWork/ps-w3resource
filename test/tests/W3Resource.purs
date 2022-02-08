module W3Resource where

import Prelude

import NumberOne (testNumberOne)
import NumberTwo (testNumberTwo)
import Test.Spec (Spec)


w3Resource ∷ Spec Unit
w3Resource = do
  testNumberOne
  testNumberTwo