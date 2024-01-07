module CustomTypes where

type Chromosome =  [Int]

type FitnessScore = Int

data Individual = Individual {
    chromosome :: Chromosome,
    fitnessScore :: FitnessScore
    } deriving (Show)
