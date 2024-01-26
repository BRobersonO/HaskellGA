module Lib where

import CustomTypes
import Params
import System.Random
import Selection (select)
import Crossover (crossover)

createNewPop :: Population -> [IO Chromosome] -> Int -> IO [Chromosome]
createNewPop _          newPop 0       = sequenceA newPop
createNewPop currentPop newPop count   =
  createNewPop currentPop (getChild : newPop) (count - 1)
  where
    getChild = do
        parents <- select currentPop
        let child = crossover parents
        return child
