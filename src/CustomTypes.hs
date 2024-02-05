module CustomTypes where

type Chromosome =  [Int]

type FitnessScore = Int

type Population = [Chromosome]

data CrossoverType =
      HalfPoint
    | OnePoint


