module IsbnVerifier (isbn) where

import Data.Char
import Data.List

isbn :: String -> Bool
isbn s | all isDigit
isbnHelper isbnList
  where noHyphensIsbn = filter (/= '-') s
  where sanitisedIsbn =

isLegalStructure s = all (== True) tests
  where tests = [
          length s == 13,
          findIndices (== '-') s == [1, 5, 11]
        ]

isbnHelper :: Num a => [a] -> a -> a -> a
isbnHelper [] acc mulFactor = acc
isbnHelper (num:rest) acc mulFactor = isbnHelper rest (acc + num * mulFactor) (mulFactor - 1)
