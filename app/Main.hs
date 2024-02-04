module Main (main) where

import Lib

main :: IO ()
main = do
    pop <- run
    print pop

-- To make things deterministically random
--   let seed = 42
--       gen = mkStdGen seed
--   let rs =  randomRs (1,0) gen :: [Int]
--   (returns infinite list)

