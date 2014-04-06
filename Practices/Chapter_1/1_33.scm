(load "prime.scm")
(load "gcd.scm")

(define (filtered-accumulate filter? combiner null-value term a next b)
  (if (> a b)
    null-value
    (combiner (if (filter? a)
                (term a)
                null-value)
              (filtered-accumulate 
                filter?
                combiner
                null-value
                term
                (next a)
                next
                b))))

; part a
(define (sum-prime a b)
  (define (termx x) x)
  (define (nextx x) (+ x 1))
  (filtered-accumulate prime? + 0 termx a nextx b))

; part b
(define (coprime? x)
  (= (gcd x b) 1))

(define (sum-coprime a b)
  (define (coprime? x)
    (= (gcd x b) 1))
  (define (termx x) x)
  (define (nextx x) (+ x 1))
  (filtered-accumulate coprime? * 1 termx a nextx b))
