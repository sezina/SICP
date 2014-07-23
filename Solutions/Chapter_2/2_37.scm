(load "2_36.scm")

; add code here
(define (dot-product v w)
  (accumulate + 0 (map * v w)))

(define (matrix-*-vector m v)
  (map <??> m))

(define (matrix-*-matrix m n)
  (let ((cols (transpose n)))
    (map <??> m)))

(define (transpose mat)
  (accumulate-n <??> <??> mat))


; test
(define m1 (list (list 1 2 3 4) (list 4 5 6 6) (list 6 7 8 9)))
(display "matrix 1: ")
(display m1)
(newline)
(define n1 (list (list 1 1 1) (list 1 1 1) (list 1 1 1) (list 1 1 1)))
(display "matrix n: ")
(display n1)
(newline)
(define v1 (list 1 1 1 1))
(display "vector 1: ")
(display v1)
(newline)

