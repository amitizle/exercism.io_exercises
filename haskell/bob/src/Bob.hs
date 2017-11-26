module Bob (responseFor) where

import Data.Char

data QuestionType = Question
                  | Yell
                  | Empty
                  | Default

responseFor :: String -> String
responseFor xs = case inputType xs of
                      Question -> "Sure."
                      Yell -> "Whoa, chill out!"
                      Empty -> "Fine. Be that way!"
                      Default -> "Whatever."


inputType :: String -> QuestionType
inputType string | all isSpace sanitisedString = Empty
                 | not (any isLower sanitisedString) && any isAlpha sanitisedString = Yell
                 | (last sanitisedString) == '?' = Question
                 | otherwise = Default
  where sanitisedString = filter (/= ' ') string
