; (define (* a b)
;   (if (= a b)
;     0
;     (+ a (* a (- b 1)))))

(define (double x)
  (* x 2))

(define (halve x)
  (/ x 2))

(define (fast-mul-iter a b)
  (define (fast-mul a b n)
    (cond ((= b 0) n)
          ((even? b) (fast-mul (double a) (halve b) n))
          (else (fast-mul a (- b 1) (+ a n)))))
  (fast-mul a b 0)
)

(define (even? n)
  (= (remainder n 2) 0))
