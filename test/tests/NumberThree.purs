module NumberThree where

import Prelude

import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual)
import W3Resource.NumberThree (numberThree, numberThreeAlternative)

testNumberThree ∷ Spec Unit
testNumberThree = do
  describe "NumberThree\t: return true if one of them is 30 or if their sum is 30" do
    
    it "one is thirty" do
      numberThree 30 20 `shouldEqual` true
      numberThreeAlternative 30 20 `shouldEqual` true
    
    it "both is thirty" do
      numberThree 30 30 `shouldEqual` true
      numberThreeAlternative 30 30 `shouldEqual` true
    
    it "sum of both is thirty" do
      numberThree 15 15 `shouldEqual` true
      numberThreeAlternative 15 15 `shouldEqual` true
    
    it "both not thirty nor sum of both is thirty" do
      numberThree 11 9 `shouldEqual` false
      numberThreeAlternative 11 9 `shouldEqual` false
