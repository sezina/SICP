(load "average.scm")

(define tolerance 0.00001)

(define (iterative-improve good-enough? imporve)
  (lambda (guess)
    (define (iter guess)
      (let ((next (imporve guess)))
        (if (good-enough? guess next)
          next
          (iter next))))
    (iter guess)))

(define (close-enough? v1 v2)
  (< (abs (- v1 v2)) tolerance))

; sqrt using iterative-improve procedure
(define (sqrt x)
  ((iterative-improve close-enough? (lambda (y) (average y (/ x y)))) 1.0))

; fixed-point using iterative-improve procedure
(define (fixed-point f first-guess)
  ((iterative-improve close-enough? f) first-guess))

(display "iterative (sqrt 2) => ")
(display (sqrt 2))
(newline)

(define (test-fixed-point-using-sqrt x)
  (fixed-point (lambda (y) (average y (/ x y)))
               1.0))
(display "(sqrt 2) use new fixed-point => ")
(display (test-fixed-point-using-sqrt 2.0))
(newline)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; recursive implementation
(define (recursive-improve good-enough? imporve)
  (lambda (guess)
    (let ((next (imporve guess)))
      (if (good-enough? guess next)
        next
        ((recursive-improve good-enough? imporve) next)))))

(define (sqrt3 x)
  ((iterative-improve close-enough? (lambda (y) (average y (/ x y)))) 1.0))

(display "recursive (sqrt 2) => ")
(display (sqrt3 2))
(newline)
