
; amit.goldberg@gmail.com

(defmodule rna-transcription
  (export
    (to-rna 1)))

(defun to-rna (dna-strand)
  (lists:map
    (lambda (c)
      (translate-char c))
    dna-strand))

(defun translate-char
  ((#\G) #\C)
  ((#\C) #\G)
  ((#\T) #\A)
  ((#\A) #\U))
