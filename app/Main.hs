module Main (main) where

import Lib
import CustomTypes
import System.Random.Stateful
import System.Random
import Control.Monad (replicateM)
import Initialization (initialize)
import Selection
import Crossover
import Mutation
import Lib (run)
import Params as Param

main :: IO ()
main = do
    pop <- run
    print pop

-- To make things deterministically random
--   let seed = 42
--       gen = mkStdGen seed
--   let rs =  randomRs (1,0) gen :: [Int]
--   (returns infinite list)

