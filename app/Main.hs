module Main (main) where

import Lib
import CustomTypes
import System.Random.Stateful
import System.Random
import Control.Monad (replicateM)
import Initialization (initialize)

main :: IO ()
main = do
    -- pop <- initialize
    -- print pop
    -- gen <- globalStdGen
  let seed = 42
      gen = mkStdGen seed
  let rs =  randomRs (1,0) gen :: [Int]
  print (take 3 rs)

