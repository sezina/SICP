(load "2_07.scm")

; Subtraction
; the lower bound of result is lower bound of first interval sub upper bound of second interval.
; the upper bound of result is upper bound of first interval sub upper bound of second interval.
(define (sub-interval x y)
  (make-interval (- (lower-bound x) (upper-bound y))
                 (- (upper-bound x) (lower-bound y))))

; test
(define interval1 (make-interval 1 3))
(define interval2 (make-interval 5 7))
(display "interval1: ")
(print-interval interval1)
(display "interval2: ")
(print-interval interval2)
(display "interval2 - interval1 = ")
(print-interval (sub-interval interval2 interval1))
(display "interval1 - interval2 = ")
(print-interval (sub-interval interval1 interval2))
