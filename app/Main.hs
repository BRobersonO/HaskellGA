module Main (main) where

import Lib
import CustomTypes
import System.Random
import Initialization (initialize)

main :: IO ()
main = do
    pop <- initialize
    print pop


