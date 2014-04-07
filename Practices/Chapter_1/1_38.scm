(load "1_37.scm")

(define (d i)
  (define (iter k ans)
    (if (> (+ k 3) i)
      ans
      (iter (+ k 3) (+ ans 2))))
  (if (or (= (remainder i 3) 0)
          (= (remainder i 3) 1))
    1
    (iter 1 2)))

(display "when k=10, e= ")
(display (+ 2 (cont-frac (lambda (i) 1.0) d 10)))
(newline)
(display "when k=100, e= ")
(display (+ 2 (cont-frac (lambda (i) 1.0) d 100)))
(newline)
(display "when k=1000, e= ")
(display (+ 2 (cont-frac (lambda (i) 1.0) d 1000)))

