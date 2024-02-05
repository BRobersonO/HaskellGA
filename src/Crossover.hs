module Crossover where

import CustomTypes
import System.Random (randomRIO)

-- TODO add two-point and uniform crossover
crossover :: CrossoverType -> [Chromosome] -> IO Chromosome
crossover cType =
  case cType of HalfPoint -> halfPoint
                OnePoint -> onePoint

halfPoint :: [Chromosome] -> IO Chromosome
halfPoint [p1, p2] = return $ take halfChromoLength p1 ++ drop halfChromoLength p2
  where
    halfChromoLength = length p1 `div` 2
halfPoint _ = error "Bad list of Chromosomes in Crossover."

onePoint :: [Chromosome] -> IO Chromosome
onePoint [p1,p2] = do
  r <- randomRIO (1, length p1 - 1)
  return $ take r p1 ++ drop r p2
onePoint _ = error "Bad list of Chromosomes in Crossover."