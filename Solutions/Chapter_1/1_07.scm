; Too small: (sqrt 0.0001)
; good-enough? will return True when guess is about 0.03
; To large: (sqrt 12345678900987654321123456789)
; The implementation of lisp does not support the substraction of two big integers
;
; New good-enough?:

(define (good-enough? guess x)
  (< (abs (- guess (improve guess x))) 0.001))

; Improved good-enough? does work with small or big number.
