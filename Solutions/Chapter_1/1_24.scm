(load "fast-prime.scm")

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (fast-prime? n 10)
    (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

; my procedure
(define (search-for-primes start end)
  (define (search-iter current)
    (if (<= current end)
      (begin
        (timed-prime-test current)
        (search-iter (+ current 2)))))
  (search-iter (if (even? start)
                 (+ start 1)
                 start)))
