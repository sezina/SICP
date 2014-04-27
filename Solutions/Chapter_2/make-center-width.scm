(load "2_08.scm")

(define (make-center-width c w)
  (make-interval (- c w) (+ c w)))

(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2))

(define (width i)
  (/ (- (upper-bound i) (lower-bound i)) 2))

; test

(define interval (make-center-width 5 0.5))
(display "interval: ")
(print-interval interval)
(display "certer of interval: ")
(display (center interval))
(newline)
(display "width of interval: ")
(display (width interval))
(newline)
