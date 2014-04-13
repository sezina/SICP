(load "newtons-method.scm")

(define (cubic a b c)
  (lambda (x)
    (+ (* x x x) (* a x x) (* b x) c)))

(define (compute-f a b c)
  (newtons-method (cubic a b c) 1))

; test

(compute-f 3 2 1) ; => -2.3247179572447276
(compute-f 1 2 3) ; => -1.2756822036498454
