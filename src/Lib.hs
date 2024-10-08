{-# LANGUAGE OverloadedStrings #-}

module Lib where

import CustomTypes
import Params as Param
import Selection (select)
import Crossover (crossover)
import Initialization (initialize)
import Mutation (mutate)

import Data.Csv
import qualified Data.ByteString.Lazy as BL

-- run = print "hi"
run = runRuns Param.numOfRuns

-- runRuns :: Int -> IO Population
runRuns rcount = foldr (\x acc -> runGenerations acc Param.numOfGenerations x) initialize [rcount,(rcount - 1)..0]

runGenerations :: IO Population -> Int -> Int -> IO Population
runGenerations pop 0 _    = pop
runGenerations pop count rcount =
  runGenerations (pop >>= (\x -> createNewPop x [] Param.populationSize) >>= mutate) (count - 1) rcount

createNewPop :: Population -> [IO Individual] -> Int -> IO Population
createNewPop _          newPop 0       = sequenceA newPop
createNewPop currentPop newPop count   =
  createNewPop currentPop (getChild : newPop) (count - 1)
  where
    getChild = do
        parents <- select currentPop
        crossover Param.crossoverType parents

writeTest pop = BL.writeFile "output.csv" $ encode pop

-- writeStats pop = GenStats
--   { runGen =
--   , bestInGen
--   , avgOfGen
--   , stDv
--   , ninetyFiveConf

--   }

-- TODO other features:
-- runRuns function to run x amount of Runs
-- promotion to next gen
-- non-coding regions
-- extinction

-- TODO other actions:
-- run on real data
-- make predictions