(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(define (make-segment start-p end-p)
  (cons start-p end-p))

(define (start-segment seg)
  (car seg))

(define (end-segment seg)
  (cdr seg))

(define (make-point x y)
  (cons x y))

(define (x-point p)
  (car p))

(define (y-point p)
  (cdr p))

(define (midpoint-segment seg)
  (let ((start-p (start-segment seg))
        (end-p (end-segment seg)))
    (make-point (/ (+ (x-point start-p) (x-point end-p)) 2)
                (/ (+ (y-point start-p) (y-point end-p)) 2))))


; test
(display "start point: ")
(define s-p (make-point 0 0))
(print-point s-p)
(newline)
(display "end point: ")
(define e-p (make-point 2 2))
(print-point e-p)
(newline)
(define seg (make-segment s-p e-p))
(display "midpoint: ")
(print-point (midpoint-segment seg))
(newline)

; test case 2
(newline)
(display "start point: ")
(define s-p (make-point 0 0))
(print-point s-p)
(newline)
(display "end point: ")
(define e-p (make-point 2 3))
(print-point e-p)
(newline)
(define seg (make-segment s-p e-p))
(display "midpoint: ")
(print-point (midpoint-segment seg))
