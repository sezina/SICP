; recursive
(define (recursive-f n)
  (if (< n 3)
     n
     (+ (recursive-f (- n 1))
        (* 2 (recursive-f (- n 2)))
        (* 3 (recursive-f (- n 3))))))

; iterative
(define (iterative-f n)
  (if (< n 3)
    n
    (iter-f 2 1 0 n 3)))

(define (iter-f a b c n counter)
  (if (= counter n)
    (+ a (* 2 b) (* 3 c))
    (iter-f (+ a (* 2 b) (* 3 c)) a b n (+ counter 1))))
