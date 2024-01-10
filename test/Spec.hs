module Main where

import Test.Tasty
import Test.Tasty.HUnit
import InitializationTests
import CrossoverTests

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests = testGroup "Tests" [initializationTests,crossoverTests]
