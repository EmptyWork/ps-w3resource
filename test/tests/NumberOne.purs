module NumberOne where

import Prelude

import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual, shouldNotEqual)
import W3Resource.NumberOne (numberOne)

testNumberOne ∷ Spec Unit
testNumberOne = do
  describe "NumberOne\t: if the two values are the same, then return triple their sum" do
    
    it "both positive but not same" do
      numberOne 41 4 `shouldEqual` 45
      numberOne 41 4 `shouldNotEqual` 0
      numberOne 78 12 `shouldEqual` 90
      numberOne 78 12 `shouldNotEqual` 0
      numberOne 1 12 `shouldEqual` 13
      numberOne 1 12 `shouldNotEqual` 0
      numberOne 10 4 `shouldEqual` 14
      numberOne 10 4 `shouldNotEqual` 0
    
    it "both negative but not same" do
      numberOne (-1) (-9) `shouldEqual` (-10)
      numberOne (-1) (-9) `shouldNotEqual` 0
      numberOne (-100) (-1000) `shouldEqual` (-1100)
      numberOne (-100) (-1000) `shouldNotEqual` 0
    
    it "both positive and also the same" do
      numberOne 10 10 `shouldEqual` 60
      numberOne 10 10 `shouldNotEqual` 0
    
    it "both negative and also the same" do
      numberOne (-10) (-10) `shouldEqual` (-60)
      numberOne (-10) (-10) `shouldNotEqual` 0