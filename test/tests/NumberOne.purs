module NumberOne where

import Prelude

import Effect (Effect)
import Effect.Class.Console (log)
import W3Resource.NumberOne (numberOne)

testNumberOne :: Effect Unit
testNumberOne = do
  log "NumberOne: If the two values are the same, then return triple their sum"
  log "4 + 4 -> 24"
  log $ show (numberOne 4 4)
  log "-4 + -4 -> -24"
  log $ show (numberOne (-4) (-4))
  log "-5 + -4 -> -9"
  log $ show (numberOne (-5) (-4))
  log "2 + 9 -> 11"
  log $ show (numberOne 2 9)