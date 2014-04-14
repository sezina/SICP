(load "newtons-method.scm")
(load "1_43.scm")

(define (smooth f)
  (lambda (x)
    (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3)))

((smooth square) 5)   ; => 25.000000000066663


(define (n-smooth f times x)
  (((repeated smooth times) f) x))

(n-smooth square 10 5)  ; => 25.000000000666663
