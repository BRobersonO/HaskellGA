module CustomTypes where

type Chromosome =  [Int]

type FitnessScore = Int

type Individual = (Chromosome, FitnessScore)

type Population = [Individual]

type Generation = [Population]

type Run = [Generation]

data CrossoverType =
      HalfPoint
    | OnePoint

data GenStats = GenStats
  { runGen          :: (Int, Int)
  , bestInGen       :: FitnessScore
  , avgOfGen        :: Double
  , stDv            :: Double
  , ninetyFiveConf  :: (Double, Double)
  }