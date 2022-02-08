module NumberTwo where

import Prelude

import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual, shouldNotEqual)
import W3Resource.NumberTwo (numberTwo)

testNumberTwo ∷ Spec Unit
testNumberTwo = do
  describe "NumberTwo\t: if n is greater than 51 return triple the absolute difference" do
    it "higher by more than 10" do
      numberTwo 67 `shouldEqual` 48
      numberTwo 67 `shouldNotEqual` 0
      numberTwo 61 `shouldEqual` 30
      numberTwo 61 `shouldNotEqual` 0
    
    it "higher by more than 100" do
      numberTwo 151 `shouldEqual` 300
      numberTwo 151 `shouldNotEqual` 0
      numberTwo 152 `shouldEqual` 303
      numberTwo 152 `shouldNotEqual` 0
    
    it "lower by more than 1" do
      numberTwo 49 `shouldEqual` 2
      numberTwo 49 `shouldNotEqual` 0
      numberTwo 44 `shouldEqual` 7
      numberTwo 44 `shouldNotEqual` 0
    
    it "lower by more than 10" do
      numberTwo 40 `shouldEqual` 11
      numberTwo 40 `shouldNotEqual` 0
      numberTwo 29 `shouldEqual` 22
      numberTwo 29 `shouldNotEqual` 0