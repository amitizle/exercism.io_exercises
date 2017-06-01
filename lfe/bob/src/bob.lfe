
; amit.goldberg@gmail.com

(defmodule bob
  ;(export-macro ends-with)
  (export
    (what-is-this-char? 1)
    (response-for 1)))

(defun response-for (question)
  (response-for-tail (string:strip question)))

; Iterate over the list, for each char, check if it's symbol, lower, upper, space, ignore...
; then see if there are 0 lower etc.

(defun do-response-for (question)
  (lists:each (lambda (c) ) question))

(defun response-for-tail
  (("") "Fine. Be that way!")
  ((question)
    (case (tuple (is-question question) (is-yell (drop-non-alpha-chars question)))
      ((tuple _ 'true) "Whoa, chill out!")
      ((tuple 'true _) "Sure.")
      ((tuple _ _) "Whatever."))))

(defun is-question (question)
  (ends-with question "?"))

(defun ends-with (str sym)
  (=:= sym (string:right str 1)))

(defun is-yell (question)
  (lists:all (lambda (next-char) (andalso (>= next-char #\A) (=< next-char #\Z))) question))

(defun drop-non-alpha-chars (str)
  (re:replace str "[^A-Za-z]" "" (list 'global (tuple 'return 'list))))

(defun what-is-this-char?
  ((c) (when (upcase? c))
    'upcase))

(defun upcase? (c)
  (lists:member c (lists:seq 65 90)))

(defun bobs-answer-for
  (('question) "Sure.")
  (('yellilng) "Whoa, chill out!")
  (('nothing) "Fine. Be that way!")
  ((other) ("Whatever.")))
