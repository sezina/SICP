; (define (* a b)
;   (if (= a b)
;     0
;     (+ a (* a (- b 1)))))

(define (double x)
  (* x 2))

(define (halve x)
  (/ x 2))

(define (fast-mul a b)
  (cond ((= b 0) 0)
        ((even? b) (fast-mul (double a) (halve b)))
        (else (+ a (fast-mul a (- b 1))))))

(define (even? n)
  (= (remainder n 2) 0))
