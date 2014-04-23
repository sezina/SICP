(load "2_08.scm")

(define (div-interval x y)
  (if (= (- (upper-bound y) (lower-bound y)) 0)
    (error "the width of second interval is 0.")
    (mul-interval x
                  (make-interval (/ 1.0 (upper-bound y))
                                 (/ 1.0 (lower-bound y))))))

; test
(define interval1 (make-interval 1 4))
(display "interval1: ")
(print-interval interval1)

(define interval2 (make-interval 1 1))
(display "interval2: ")
(print-interval interval2)

(display "the result of interval1 / interval2: ")
(newline)
(div-interval interval1 interval2)
