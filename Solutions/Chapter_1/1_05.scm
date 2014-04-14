(define (p) (p))

(define (test x y)
  (if (= x 0)
    0
    y))
; run (test 0 (p))
; If an interpreter is uses applicative-order evaluation, it will loop forever 
; to evaluate the procedure (p) which is always return itself. This will never 
; stop. Because the interpreter will all the arguments before apply. (p) is an 
; argument.
; If an interpreter is uses normal-order evaluation, we will observe the value 
; of the procedure is 0. Because normal-order evaluation will fully expand and 
; then reduce. Thus, the procedure will be:
; (if (= 0 0)
;   0
;   (p))
; so we got a 0.
