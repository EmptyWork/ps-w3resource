module Test.Main where

import Prelude

import Effect (Effect)
import Effect.Aff (launchAff_)
import Test.Spec.Reporter (consoleReporter)
import Test.Spec.Runner (runSpec)
import W3Resource (w3Resource)

main ∷ Effect Unit
main = launchAff_ do
  runSpec [consoleReporter] w3Resource
