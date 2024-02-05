module Params where
import CustomTypes (CrossoverType (HalfPoint))

mutationRate :: Double
mutationRate = 0.001

crossoverRate :: Double
crossoverRate = 1.0

chromosomeLength :: Int
chromosomeLength = 200
-- annie's was 200

populationSize :: Int
populationSize = 100

tournamentSize :: Int
tournamentSize = 3

numOfGenerations :: Int
numOfGenerations = 100
-- annie's was 100

{- crossoverTypes include:
    HalfPoint
    OnePoint
-}
crossoverType :: CrossoverType
crossoverType = HalfPoint

--TODO add selection methods
{-
selection methods:
    proportional
    random
    rank
    tournament
-}