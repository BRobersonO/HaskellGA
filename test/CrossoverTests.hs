module CrossoverTests where

import Test.Tasty
import Test.Tasty.HUnit
import Crossover

crossoverTests :: TestTree
crossoverTests = testGroup "crossover tests"
    [
        testCase "even number length" $
            crossover [[1,1,0,0],[0,0,1,1]] @?= [1,1,1,1]
    ,   testCase "odd number length" $
            crossover [[1,2,3],[4,5,6]] @?= [1,5,6]
    ,   testCase "singleton list" $
            crossover [[1],[2]] @?= [2]
    ]