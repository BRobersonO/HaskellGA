module Lib
    ( someFunc,
      myIndividual
    ) where

import CustomTypes

someFunc :: IO ()
someFunc = putStrLn "someFunc"

fitnessFunction :: [Int] -> Int
fitnessFunction = sum

myChromo :: Chromosome
myChromo =  [1,2,3]

myIndividual :: Individual
myIndividual = Individual myChromo (fitnessFunction myChromo)