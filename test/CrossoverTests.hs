module CrossoverTests where

import Test.Tasty
import Test.Tasty.HUnit
import Crossover

crossoverTests :: TestTree
crossoverTests = testGroup "initialization tests"
    [
        testCase "three numbers" $
            addThree 1 2 3 @?= 6
    ]