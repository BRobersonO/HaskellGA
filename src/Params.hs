module Params where
import CustomTypes

mutationRate :: Double
mutationRate = 0.0001
-- annie's was 0.0001 at default

crossoverRate :: Double -- TODO implement this
crossoverRate = 1.0

chromosomeLength :: Int
chromosomeLength = 200
-- annie's was 200 at default

populationSize :: Int
populationSize = 100

tournamentSize :: Int
tournamentSize = 3

numOfGenerations :: Int
numOfGenerations = 100
-- annie's was 100 at default

numOfRuns :: Int
numOfRuns = 2

{- crossoverTypes include:
    HalfPoint
    OnePoint
-}
crossoverType :: CrossoverType
crossoverType = OnePoint

--TODO add selection methods
{-
selection methods:
    proportional
    random
    rank
    tournament
-}