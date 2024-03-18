module Initialization where

import CustomTypes
import System.Random (randomRIO)
import Control.Monad (replicateM)
import Params as Param (chromosomeLength, populationSize)
import Fitness

initialize :: IO Population
initialize = do createPopulation Param.populationSize Param.chromosomeLength

createPopulation :: Int -> Int -> IO Population
createPopulation popSize chromoLen = fit <$> replicateM popSize createChromosome
  where
    createChromosome = replicateM chromoLen (randomRIO (0, 1))
    fit = map (\x -> (x, fitnessFunc x))

addTwo x y = x + y
