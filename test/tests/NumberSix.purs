module NumberSix where

import Prelude

import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual)
import W3Resource.NumberSix (numberSix, numberSixAlternative)

testNumberSix ∷ Spec Unit
testNumberSix = do
  describe "NumberSix: check whether a given temperatures is less than 0 and the other is greater than 100." do
    
    it "one of it is true" do
      numberSix 0 110 `shouldEqual` [false, true]
      numberSixAlternative 0 110 `shouldEqual` [false, true]
      numberSix 0 290 `shouldEqual` [false, true]
      numberSixAlternative 0 290 `shouldEqual` [false, true]
    
    it "both is true" do
      numberSix (-10) 120 `shouldEqual` [true, true]
      numberSixAlternative (-10) 120 `shouldEqual` [true, true]
      numberSix (-100) 320 `shouldEqual` [true, true]
      numberSixAlternative (-100) 320 `shouldEqual` [true, true]
    
    it "both is false" do
      numberSix 3 10 `shouldEqual` [false, false]
      numberSixAlternative 3 10 `shouldEqual` [false, false]
      numberSix 70 (-2) `shouldEqual` [false, false]
      numberSixAlternative 70 (-2) `shouldEqual` [false, false]