module Initialization where

import CustomTypes
import System.Random (randomRIO)
import Control.Monad (replicateM)
import Params (chromosomeLength, populationSize)

-- initialize :: Population
initialize :: IO Population
initialize = do createPopulation populationSize chromosomeLength

createPopulation :: Int -> Int -> IO [Chromosome]
createPopulation popSize chromoLen = replicateM popSize createChromosome
  where
    createChromosome = replicateM chromoLen (randomRIO (0, 1))

