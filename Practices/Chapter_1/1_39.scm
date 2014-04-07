(define (tan-cf x k)
  (define (n i)
    (if (= i 1)
      x
      (* x x)))
  (define (d i)
    (- (* 2 i) 1))
  (define (recur m)
    (if (> m k)
      0
      (/ (n m)
         (- (d m) (recur (+ m 1))))))
  (recur 1))
