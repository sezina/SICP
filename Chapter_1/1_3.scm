;1_3.scm

(define (sum_of_max_two x y z)
  (cond ((and (< x y) (< x z)) (+ y z))
        ((and (< y x) (< y z)) (+ x z))
        (else (+ x y))))

; or
(define (sum_of_max_two2 x y z)
  (+ (max x y) (max y z)))
