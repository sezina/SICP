; part a
(define (accumulate combiner null-value term a next b)
  (if (> a b)
    null-value
    (combiner (accumulate 
                combiner 
                null-value 
                term 
                (next a) 
                next 
                b) a)))

; part b
(define (accumulate-iter combiner null-value term a next b)
  (define (iter a ans)
    (if (> a b)
      ans
      (iter (next a) (combiner (term a) ans))))
  (iter a null-value))
