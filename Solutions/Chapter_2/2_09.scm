(load "2_08.scm")

(define (interval-width x)
  (/ (- (upper-bound x) (lower-bound x)) 2))


; Prove
; let interval1 = (a, b), interval2 = (c, d)
;     plus-interval = interval1 + interval2
;                   = (a+c, b+d)
; then width-interval1 = (b - a) / 2
;      width-interval2 = (d - c) / 2
;      width-plus-intervale = ((b+d) - (a+c)) / 2
;                           = (b+d - a-c)/2
;                           = (b-a+d-c)/2
;                           = ((b-a) + (d-c)) / 2
;                           = (b-a)/2 + (d-c)/2
;                           = width-interval1 + width-interval2
;
;     sub-interval = interval1 - interval2
;                  = (a-c, b-d)
; then width-sub-interval = ((b-d) - (a-c)) / 2
;                         = (b-d-a+c) / 2
;                         = (b-a-d+c) / 2
;                         = ((b-a) - (d-c)) / 2
;                         = (b-a)/2 - (d-c)/2
;                         = width-interval1 - width-interval2


; test
(define interval1 (make-interval 1 3))
(display "interval1: ")
(print-interval interval1)

(define width-interval1 (interval-width interval1))
(display "width of interval1: ")
(display width-interval1)
(newline)

(define interval2 (make-interval 6 9))
(display "interval2: ")
(print-interval interval2)

(define width-interval2 (interval-width interval2))
(display "width of interval2: ")
(display width-interval2)
(newline)
(define mul-result (mul-interval interval1 interval2))
(display "interval1 * interval2 = ")
(print-interval mul-result)
(define width-mul-result (interval-width mul-result))
(display "width of mul-result: ")
(display width-mul-result)
(newline)
(display "test width-mul-result = width-interval1 * width-interval2? ")
(display (= width-mul-result (* width-interval1 width-interval2)))
(newline)

(define div-result (div-interval interval1 interval2))
(display "interval1 / interval2 = ")
(print-interval div-result)
(define width-div-result (interval-width div-result))
(display "width of div-result: ")
(display width-div-result)
(newline)
(display "test width-mul-result = width-interval1 / width-interval2? ")
(display (= width-div-result (/ width-interval1 width-interval2)))
(newline)


