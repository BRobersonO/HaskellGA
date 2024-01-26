module Crossover where

import CustomTypes
import Params as Param

crossover :: [Chromosome] -> Chromosome
crossover [p1, p2] = take halfChromoLength p1 ++ drop halfChromoLength p2
  where
    halfChromoLength = length p1 `div` 2
crossover _ = error "Bad list of Chromosomes in Crossover."


addToPop :: Chromosome -> Population -> Population
addToPop newChromo pop  = undefined