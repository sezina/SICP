(load "fast-expt.scm")

(define (expmod base exp m)
  (remainder (fast-expt base exp) m))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)))

; This cannot serve as well for our fast prime tester.
; When n is large, fast-expt will cost too much, like
; compute 1000000 powered by 10000000000000000000000.
; The redundant work in expmod procedure in 1.2.6 section
; is for reducing the cost of computing exponential.
