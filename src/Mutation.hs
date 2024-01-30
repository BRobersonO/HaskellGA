module Mutation where

import CustomTypes
import Params as Param
import System.Random (randomRIO)

-- TODO implement mutation rate
mutate :: Population -> Population
mutate pop = undefined

mutateChromo :: Chromosome -> Chromosome
mutateChromo chromo = undefined

-- mutateBit :: Int -> IO Int
mutateBit bit = do
  r <- randomRIO (0.0, 1.0 )
  if Param.mutationRate >= r then print $ "The rate " ++ show Param.mutationRate ++ " is >= to the random number " ++ show r
  else print $ "The rate " ++ show Param.mutationRate ++ " is < to the random number " ++ show r

{-
-- Mutation
mutate :: Int -> Double -> IO Int
mutate x rate = do
  num <- randomRIO (1, 100000 :: Int)
  if num > round (rate * 100000)
    then return x
    else return $ flipBit x
  where
    flipBit 1 = 0
    flipBit 0 = 1

-}