(define (cons x y)
  (lambda (m) (m x y)))

(define (car z)
  (z (lambda (p q) p)))

; test 
(newline)
(display "make first pair (cons 1 2)")
(newline)
(define first-pair (cons 1 2))
(display "first-pair: ")
(display first-pair)
(newline)
(display "test (car first-pair), result must be 1")
(newline)
(display "(car first-pair): ")
(display (car first-pair))
(newline)

(newline)
(display "make second pair (cons 4 3)")
(newline)
(define second-pair (cons 4 3))
(display "second-pair: ")
(display second-pair)
(newline)
(display "test (car second-pair), result must be 4")
(newline)
(display "(car second-pair): ")
(display (car second-pair))
(newline)

; first-pair 
; => (cons 1 2)
; => (lambda (m) (m 1 2))
; (car first-pair)
; => (first-pair (lambda (p q) p))
; => ((lambda (m) (m 1 2)) (lambda (p q) p))
; => ((lambda (p q) p) 1 2)     ; take two params p and q, then return first param p
; => 1


(define (cdr z)
  (z (lambda (p q) q)))

; test cdr
(newline)
(display "test (cdr first-pair), result must be 2")
(newline)
(display "(cdr first-pair): ")
(display (cdr first-pair))
(newline)

(newline)
(display "test (cdr second-pair), result must be 3")
(newline)
(display "(cdr second-pair): ")
(display (cdr second-pair))
(newline)
