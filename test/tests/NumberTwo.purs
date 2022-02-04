module NumberTwo where

import Prelude

import Effect (Effect)
import Effect.Class.Console (log)
import W3Resource.NumberTwo (numberTwo)

testNumberTwo :: Effect Unit
testNumberTwo = do
  log "NumberTwo: If n is greater than 51 return triple the absolute difference"
  log "67 -> 48"
  log $ show (numberTwo 67)
  log "50 -> 1"
  log $ show (numberTwo 50)