module NumberFive where

import Prelude

import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual, shouldNotEqual)
import W3Resource.NumberFive (numberFive)

testNumberFive ∷ Spec Unit
testNumberFive = do
  describe "NumberFive\t : check whether a given positive number is a multiple of 3 or a multiple of 7" do

    it "positive number should equal" do
      numberFive 20 `shouldEqual` false
      numberFive 70 `shouldEqual` true

    it "negative number should equal" do
      numberFive (-3) `shouldEqual` true

    it "positive number should not equal" do
      numberFive 1 `shouldNotEqual` true

    it "negative number should not equal" do
      numberFive (-3) `shouldNotEqual` false