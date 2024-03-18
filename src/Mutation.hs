module Mutation where

import CustomTypes
import Params as Param
import System.Random (randomIO)

-- mutate :: Population -> IO Population
-- mutate = traverse mutateChromo

-- mutateChromo :: Chromosome -> IO Chromosome
-- mutateChromo = traverse mutateBit

-- mutateBit :: Int -> IO Int
-- mutateBit bit = do
--   r <- randomIO :: IO Double
--   if Param.mutationRate > r
--     then return $ flipBit bit
--     else return bit
--     where
--       flipBit 1 = 0
--       flipBit 0 = 1
--       flipBit _ = error "Bit must be 1 or 0."