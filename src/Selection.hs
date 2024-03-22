module Selection where

import CustomTypes
import Params as Param

import System.Random (randomRIO)
import Data.List (maximumBy)

select :: Population -> IO [Individual]
select pop = sequenceA [chromo1, chromo2]
  where
    chromo1 = tournament pop [] Param.tournamentSize
    chromo2 = tournament pop [] Param.tournamentSize

tournament :: Population -> [IO Individual] -> Int -> IO Individual
tournament _   players 0          = getMostFit <$> sequenceA players
tournament pop players numPlayers =
    tournament pop (pickOne pop:players) (numPlayers - 1)

getMostFit :: [Individual] -> Individual
getMostFit = maximumBy (\ (_,x) (_,y) -> compare x y)

pickOne :: Population -> IO Individual
pickOne pop = (pop !!) <$> randomRIO (0, Param.populationSize - 1)

-- TODO create fitness function module,
-- add fitness to each individual for measuring purposes
-- create stats for measuring: bestInGen, avgOfGen, stDv, 95%ConfInt