(define (fast-expt base n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt base (/ n 2))))
        (else (* base (fast-expt base (- n 1))))))

(define (cons a b)
  (* (fast-expt 2 a) (fast-expt 3 b)))

(define (car p)
  (define (iter next-p ans)
    (if (= (remainder next-p 2) 1)
      ans
      (iter (/ next-p 2) (+ ans 1))))
  (iter p 0))

(define (cdr p)
  (define (iter next-p ans)
    (if (or (= (remainder next-p 3) 1) (= (remainder next-p 3) 2))
      ans
      (iter (/ next-p 3) (+ ans 1))))
  (iter p 0))

; test
; a = 1, b = 1
(newline)
(display "(a, b) => (1, 1)")
(newline)
(define p1 (cons 1 1))
(display "(cons 1 1) => ")
(display p1)
(newline)
(display "(car p1) => ")
(display (car p1))
(newline)
(display "(cdr p1) => ")
(display (cdr p1))
(newline)

; test
; a = 2, b = 3
(newline)
(display "(a, b) => (2, 3)")
(newline)
(define p2 (cons 2 3))
(display "(cons 2 3) => ")
(display p2)
(newline)
(display "(car p2) => ")
(display (car p2))
(newline)
(display "(cdr p2) => ")
(display (cdr p2))
(newline)

; test
; a = 0, b = 5
(newline)
(display "(a, b) => (0, 5)")
(newline)
(define p3 (cons 0 5))
(display "(cons 0 5) => ")
(display p3)
(newline)
(display "(car p3) => ")
(display (car p3))
(newline)
(display "(cdr p3) => ")
(display (cdr p3))
(newline)
