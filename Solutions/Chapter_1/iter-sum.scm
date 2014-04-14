(define (sum term a next)
  (define (iter j ans)
    (if (> j b)
      ans
      (iter (next j)
            (+ (term j) ans))))
  iter a 0))
