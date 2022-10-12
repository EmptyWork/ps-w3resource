module NumberFour where

import Prelude

import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual, shouldNotEqual)
import W3Resource.NumberFour (numberFour, numberFourAlternative, numberFourAlternative2)

testNumberFour ∷ Spec Unit
testNumberFour = do
  describe "NumberFour\t: return true if it is within 10 of 100 or 200" do

    it "is within 500" do
      numberFour 510 `shouldEqual` false
      numberFourAlternative 510 `shouldEqual` false
      numberFourAlternative2 510 `shouldEqual` false
      numberFourAlternative2 510 `shouldNotEqual` true

    it "is within 210" do
      numberFour 201 `shouldEqual` true
      numberFourAlternative 208 `shouldEqual` true
      numberFourAlternative2 210 `shouldEqual` true
      numberFourAlternative2 210 `shouldNotEqual` false
    
    it "is within 100" do
      numberFour 101 `shouldEqual` true
      numberFourAlternative 108 `shouldEqual` true
      numberFourAlternative2 110 `shouldEqual` true
      numberFourAlternative2 110 `shouldNotEqual` false