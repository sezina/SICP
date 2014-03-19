(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next n)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (next cur-test-divisor)
  (if (= cur-test-divisor 2)
    3
    (+ cur-test-divisor 2)))
