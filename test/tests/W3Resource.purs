module W3Resource where

import Prelude

import NumberFive (testNumberFive)
import NumberFour (testNumberFour)
import NumberOne (testNumberOne)
import NumberSix (testNumberSix)
import NumberThree (testNumberThree)
import NumberTwo (testNumberTwo)
import Test.Spec (Spec)

w3Resource ∷ Spec Unit
w3Resource = do
  testNumberOne
  testNumberTwo
  testNumberThree
  testNumberFour
  testNumberFive
  testNumberSix