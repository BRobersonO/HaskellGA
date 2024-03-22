module Lib where

import CustomTypes
import Params as Param
import Selection (select)
import Crossover (crossover)
import Initialization (initialize)
import Mutation (mutate)

-- run = print "hi"
run = runRuns initialize Param.numOfRuns

runRuns :: IO Population -> Int -> IO Population
runRuns pop 0 = pop
runRuns pop count = runRuns (runGenerations pop Param.numOfGenerations) (count - 1)

runGenerations :: IO Population -> Int -> IO Population
runGenerations pop 0     = pop
runGenerations pop count =
  runGenerations (pop >>= (\x -> createNewPop x [] Param.populationSize) >>= mutate) (count - 1)

createNewPop :: Population -> [IO Individual] -> Int -> IO Population
createNewPop _          newPop 0       = sequenceA newPop
createNewPop currentPop newPop count   =
  createNewPop currentPop (getChild : newPop) (count - 1)
  where
    getChild = do
        parents <- select currentPop
        crossover Param.crossoverType parents

-- TODO other features:
-- runRuns function to run x amount of Runs
-- promotion to next gen
-- non-coding regions
-- extinction

-- TODO other actions:
-- run on real data
-- make predictions