(load "make-center-width.scm")

(define (make-center-percent c p)
  (let ((w (* c (/ p 100))))
    (make-interval (- c w) (+ c w))))

(define (percent i)
  (* 100
     (/ (width i) (center i))))

; test
(display "interval: ")
(define interval1 (make-center-percent 7 10))
(print-interval interval1)
(display "center of interval1: ")
(display (center interval1))
(newline)
(display "percent of interval1: ")
(display (percent interval1))
(newline)
