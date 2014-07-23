(load "conventional-interface.scm")

(define (horner-eval x coefficient-sequence)
  (accumulate (lambda (this-coeff higher-terms)
                (+ this-coeff (* x higher-terms)))
              0
              coefficient-sequence))

(display "(horner-eval 2 (list 1 3 0 5 0 1)) => ")
(display (horner-eval 2 (list 1 3 0 5 0 1)))