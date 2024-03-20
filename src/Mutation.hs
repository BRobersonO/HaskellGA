module Mutation where

import CustomTypes
import Params as Param
import System.Random (randomIO)
import Fitness

mutate :: Population -> IO Population
mutate p = fit <$> traverse mutateChromo p
  where
    fit = map (\x -> (x, fitnessFunc x))

mutateChromo :: Individual -> IO Chromosome
mutateChromo (chromo, _) = traverse mutateBit chromo

mutateBit :: Int -> IO Int
mutateBit bit = do
  r <- randomIO :: IO Double
  if Param.mutationRate > r
    then return $ flipBit bit
    else return bit
    where
      flipBit 1 = 0
      flipBit 0 = 1
      flipBit _ = error "Bit must be 1 or 0."