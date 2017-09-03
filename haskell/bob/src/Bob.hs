module Bob (responseFor) where

import Text.Regex.Posix

data QuestionType = Question
                  | Yell
                  | Empty
                  | Default

responseFor :: String -> String
responseFor xs = case questionType xs of
                      Question -> "Sure."
                      Yell -> "Whoa, chill out!"
                      Empty -> "Fine. Be that way!"
                      Default -> "Whatever."
  where questionType xxs | (xxs =~ "AA" :: Bool) = Question
                         | otherwise = Default
