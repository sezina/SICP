(load "2_02.scm")

; make-rec using 4 points
; a .        . b
;
;
; d .        . c
(define (make-rec a b c d)
  (cons (make-segment a b)
        (make-segment c d)))

(define (up-edge rec)
  (car rec))

(define (low-edge rec)
  (cdr rec))

(define (a-point rec)
  (start-segment (up-edge rec)))

(define (b-point rec)
  (end-segment (up-edge rec)))

(define (c-point rec)
  (start-segment (low-edge rec)))

(define (d-point rec)
  (end-segment (low-edge rec)))

(define (width rec)
  (let ((a (a-point rec))
        (b (b-point rec)))
    (sqrt (+ (square (- (y-point a) (y-point b))) 
             (square (- (x-point a) (x-point b)))))))

(define (height rec)
  (let ((a (a-point rec))
        (d (d-point rec)))
    (sqrt (+ (square (- (y-point a) (y-point d)))
             (square (- (x-point a) (x-point d)))))))

(define (circle rec)
  (* (+ (width rec) (height rec)) 2))

(define (area rec)
  (* (width rec) (height rec)))


; make-rec using two edge
; a ___________ b
;
;
; d ___________ c
(define (make-rec2 u-e l-e)
  (cons u-e l-e))

; test
(display "using make-rec")
(newline)
(define ap (make-point 0 2))
(define bp (make-point 3 2))
(define cp (make-point 3 0))
(define dp (make-point 0 0))
(define rec1 (make-rec ap bp cp dp))
(display "the circle is: ")
(display (circle rec1))
(newline)
(display "the area is: ")
(display (area rec1))
(newline)
(newline)

(display "using make-rec2")
(newline)
(define ue (make-segment ap bp))
(define le (make-segment cp dp))
(define rec2 (make-rec2 ue le))
(display "the circle is: ")
(display (circle rec2))
(newline)
(display "the area is: ")
(display (area rec2))
(newline)
