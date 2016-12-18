
; amit.goldberg@gmail.com

(defmodule bob
  ;(export-macro ends-with)
  (export
    (response-for 1)))

(defun response-for (question)
  (response-for-tail (string:strip question)))

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
