module Selection where

import CustomTypes
import Params as Param
import System.Random (randomRIO)
import Data.List

select :: (Chromosome, Chromosome)
select = undefined
-- TODO working on tournament
tournament :: Population -> (Chromosome -> Int) -> [Chromosome] -> Chromosome
tournament :: (Num t, Ord a, Eq t,
                Control.Monad.IO.Class.MonadIO f) =>
                [b] -> (f b -> a) -> [f b] -> t -> f b
tournament pop fitFunc competitors 0            = getMostFit competitors
    where
        getMostFit = maximumBy (\a b -> compare (fitFunc a) (fitFunc b))
tournament pop fitFunc competitors numOfPlayers =
    tournament pop fitFunc (pickOne:competitors) (numOfPlayers - 1)
    where
        pickOne = (pop !!) <$> (randomRIO (0, Param.populationSize - 1))


-- fitFunc :: [Int] -> Int
fitFunc xs = do
    list <- xs
    return sum list