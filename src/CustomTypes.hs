module CustomTypes where

type Chromosome =  [Int]

type FitnessScore = Int

type Individual = (Chromosome, FitnessScore)

type Population = [Individual]

data CrossoverType =
      HalfPoint
    | OnePoint
