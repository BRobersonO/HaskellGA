module Lib where

import CustomTypes
import Params as Param
import Selection (select)
import Crossover (crossover)
import Initialization (initialize)
import Mutation (mutate)

run = runGenerations initialize Param.numOfGenerations

runGenerations :: IO Population -> Int -> IO Population
runGenerations pop 0     = pop
runGenerations pop count =
  runGenerations (pop >>= (\x -> createNewPop x [] Param.populationSize) >>= mutate) (count - 1)

createNewPop :: Population -> [IO Chromosome] -> Int -> IO Population
createNewPop _          newPop 0       = sequenceA newPop
createNewPop currentPop newPop count   =
  createNewPop currentPop (getChild : newPop) (count - 1)
  where
    getChild = do
        parents <- select currentPop
        crossover Param.crossoverType parents

-- TODO other features:
-- promotion to next gen
-- non-coding regions
-- extinction