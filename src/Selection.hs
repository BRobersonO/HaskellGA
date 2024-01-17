module Selection where

import CustomTypes
import Params as Param
import System.Random (randomRIO)
import Data.List (maximumBy)

select :: [Chromosome] -> IO [Chromosome]
select pop = sequenceA [chromo1, chromo2]
  where
    chromo1 = tournament pop fitnessFunc [] Param.tournamentSize
    chromo2 = tournament pop fitnessFunc [] Param.tournamentSize

tournament :: Population -> ([Int] -> Int) -> [IO Chromosome] -> Int -> IO Chromosome
tournament _   fitFunc players 0          = getMostFit fitFunc <$> sequenceA players
tournament pop fitFunc players numPlayers =
    tournament pop fitFunc (pickOne pop:players) (numPlayers - 1)

getMostFit :: ([Int] -> Int) -> [Chromosome] -> Chromosome
getMostFit fitFunc = maximumBy (\a b -> compare (fitFunc a) (fitFunc b))

pickOne :: Population -> IO Chromosome
pickOne pop = (pop !!) <$> randomRIO (0, Param.populationSize - 1)

fitnessFunc :: [Int] -> Int
fitnessFunc = sum