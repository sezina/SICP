(load "1_42.scm")

(define (repeated f times)
  (lambda (x)
    (if (= times 1)
      (f x)
      ((compose (repeated f (- times 1)) f) x))))

((repeated square 2) 5)  ; => 625
