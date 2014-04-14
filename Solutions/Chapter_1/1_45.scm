(load "average-damp.scm")
(load "fixed-point.scm")

(define (n-power base n)
  (if (= n 0)
    1
    ((repeated (lambda (x) (* base x)) n) 1)))

; test n-power
(display "test (n-power base n): ")
(newline)
(display "(n-power 2 0) => ")
(display (n-power 2 0))
(newline)
(display "(n-power 2 4) => ")
(display (n-power 2 4))
(newline)


(define (n-average-damp f n)
  (if (= n 1)
    (average-damp f)
    (n-average-damp (average-damp f) (- n 1))))

; test n-average-damp
(display "test (n-average-damp f n)")
(newline)
(display "(n-average-damp (lambda (x) (* x x)) 1) => ")
(display ((n-average-damp (lambda (x) (* x x)) 1) 10))
(newline)
(display "((n-average-damp (lambda (x) (* x x)) 2) 10) => ")
(display ((n-average-damp (lambda (x) (* x x)) 2) 10))
(newline)

(define (n-power-root-with-adt n x average-damp-times)
  (fixed-point (n-average-damp (lambda (y) (/ x (n-power y (- n 1)))) average-damp-times) 
               1.0))

; test (n-power-root n x times)
(display "test n-power-root")
(newline)
(display "(n-power-root-with-adt 4 16 2) => ")
(display (n-power-root-with-adt 4 16 2))
(newline)
(display "(n-power-root-with-adt 5 32 2) => ")
(display (n-power-root-with-adt 5 32 2))
(newline)
(display "(n-power-root-with-adt 6 64 2) => ")
(display (n-power-root-with-adt 6 64 2))
(newline)
(display "(n-power-root-with-adt 7 128 2) => ")
(display (n-power-root-with-adt 7 128 2))
(newline)
(display "(n-power-root-with-adt 8 256 3) => ")
(display (n-power-root-with-adt 8 256 3))
(newline)
(display "(n-power-root-with-adt 15 (n-power 2 15) 3) => ")
(display (n-power-root-with-adt 15 (n-power 2 15) 3))
(newline)
(display "(n-power-root-with-adt 16 (n-power 2 16) 4) => ")
(display (n-power-root-with-adt 16 (n-power 2 16) 4))
(newline)
(display "(n-power-root-with-adt 31 (n-power 2 31) 4) => ")
(display (n-power-root-with-adt 31 (n-power 2 31) 4))
(newline)
(display "(n-power-root-with-adt 32 (n-power 2 32) 5) => ")
(display (n-power-root-with-adt 32 (n-power 2 32) 5))
(newline)

; find that the times of average-damp should be [lg n] where lg is log base on 2

(define (lg n)
  (if (< n 4)
    1
    (+ 1 (lg (/ n 2)))))

(define (n-power-root n x)
  (n-power-root-with-adt n x (lg n)))

; test (n-power-root n x)
(display "test n-power-root")
(newline)
(display "(n-power-root 4 16) => ")
(display (n-power-root 4 16))
(newline)
(display "(n-power-root 8 256) => ")
(display (n-power-root 8 256))
(newline)
(display "(n-power-root 16 (n-power 2 16)) => ")
(display (n-power-root 16 (n-power 2 16)))
(newline)