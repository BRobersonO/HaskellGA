module Initialization where

import CustomTypes
import System.Random (randomRIO)
import Control.Monad (replicateM)
import Params (chromosomeLength, populationSize)

initialize :: IO Population
initialize = do createPopulation populationSize chromosomeLength

createPopulation :: Int -> Int -> IO Population
createPopulation popSize chromoLen = replicateM popSize createChromosome
  where
    createChromosome = replicateM chromoLen (randomRIO (0, 1))

addTwo x y = x + y
