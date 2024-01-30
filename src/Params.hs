module Params where

mutationRate :: Double
mutationRate = 0.5

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
numOfGenerations = 5
-- annie's was 100

{-
selection methods:
    proportional
    random
    rank
    tournament
-}