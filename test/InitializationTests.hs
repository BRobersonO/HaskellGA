module InitializationTests where

import Test.Tasty
import Test.Tasty.HUnit
import Initialization (addTwo)

initializationTests :: TestTree
initializationTests = testGroup "initialization tests"
    [
        testCase "two numbers" $
            addTwo 2 3 @?= 5
    ]