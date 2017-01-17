
; amit.goldberg@gmail.com

(defmodule leap
  (export
    (leap-year 1)))

; a leap year is a year that is:
; evenly divisible by 4
;   except every year that is evenly divisible by 100
;     unless the year is also evenly divisible by 400
; => if divisible-by 4 AND (not divisible-by 100 OR divisible-by 400)
(defun leap-year (year)
  (andalso (divisible-by 4 year)
    (orelse (not (divisible-by 100 year)) (divisible-by 400 year))))

(defun divisible-by
  ((modulo year) (when (=:= 0 (rem year modulo)))
    'true)
  ((modulo year) 'false))
