module SelectionTests where

import Test.Tasty
import Test.Tasty.HUnit
import Selection (getMostFit)

selectionTests :: TestTree
selectionTests = testGroup "selection tests"
    [
        testCase "find the fittest chromo" $
            getMostFit sum [[1,1],[2,2],[3,3]] @?= [3,3]
    ]