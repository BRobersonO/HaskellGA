module Crossover where

import CustomTypes
import System.Random (randomRIO)
import Fitness

-- TODO add two-point and uniform crossover
crossover :: CrossoverType -> [Individual] -> IO Individual
crossover cType =
  case cType of HalfPoint -> halfPoint
                OnePoint -> onePoint

halfPoint :: [Individual] -> IO Individual
halfPoint [(p1,_), (p2,_)] = return $ fit $ take halfChromoLength p1 ++ drop halfChromoLength p2
  where
    halfChromoLength = length p1 `div` 2
    fit x = (x, fitnessFunc x)
halfPoint _ = error "Bad list of Individuals in HalfPoint Crossover."

onePoint :: [Individual] -> IO Individual
onePoint [(p1,_), (p2,_)] = do
  r <- randomRIO (1, length p1 - 1)
  return $ fit $ take r p1 ++ drop r p2
  where
    fit x = (x, fitnessFunc x)
onePoint _ = error "Bad list of Individuals in OnePoint Crossover."