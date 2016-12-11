
; amit.goldberg@gmail.com

(defmodule rna-transcription
  (export
    (to-rna 1)))

(defun to-rna (dna-string)
  (to-rna-helper dna-string '()))

(defun to-rna-helper
  (('() acc) (string:join (lists:reverse acc) ""))
  (((cons next-char rest-chars) acc)
    (to-rna-helper rest-chars (cons (translate-char next-char) acc))))

(defun translate-char
  ((#\G) "C")
  ((#\C) "G")
  ((#\T) "A")
  ((#\A) "U")
  ((other) other)) ; should never happen but...
