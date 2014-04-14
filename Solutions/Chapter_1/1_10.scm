(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

; (A 1 10) => 1024
; (A 2 4)  => 65536
; (A 3 3)  => 65536


; (define (f n) (A 0 n))
; compute: 2 * n
; (define (g n) (A 1 n))
; compute: n power of 2, when n > 1, and 0, when n = 0.
; (define (h n) (A 2 n))
; compute: 0, when n = 0; 2, when n = 1; (h (- n 1)) power of 2, when n > 1
