module Mutation where

import CustomTypes

mutate :: Population -> Population
mutate pop = undefined

mutateChromo :: Chromosome -> Chromosome
mutateChromo chromo = undefined

mutateBit :: Int -> Int
mutateBit bit = undefined

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