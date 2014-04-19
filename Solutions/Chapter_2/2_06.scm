(define zero
  (lambda (f) (lambda (x) x)))

(define (add-1 n)
  (lambda (f)
    (lambda (x) (f ((n f) x)))))

; define a helper procedure multi-two
; it take one parameter and return the value of multiplied by 2
(define multi-two
  (lambda (x) (* 2 x)))

(define one
  (lambda (f)
    (lambda (x) (f x))))

(newline)
(display "In order to illustrate the integer 1, ")
(display "to apply ((one multi-two) 1), the ans should be 2: ")
(display ((one multi-two) 1))
(newline)

(define two
  (lambda (f)
    (lambda (x) (f (f x)))))

(display "In order to illustrate the integer 2, ")
(display "to apply ((two multi-two) 2), the ans should be 4: ")
(display ((two multi-two) 1))
(newline)

(define (+ a b)
  (lambda (f)
    (lambda (x) (f ((b (a f)) x)))))

(newline)
(display "test new definition of + procedure")
(newline)
(display "Test (+ one one), ")
(display "to apply (((+ one one) multi-two) 1), the ans should be 4: ")
(display (((+ one one) multi-two) 1))
(newline)

(display "Test (+ one two), ")
(display "to apply (((+ one two) multi-two) 1), the ans should be 8: ")
(display (((+ one two) multi-two) 1))


; (+ one one)
; expand => 
; (lambda (f)
;   (lambda (x) (f ((one (one f)) x))))
; 
; expand (one f) =>
; (lambda (f)
;   (lambda (x) (f ((one ((lambda (f)
;                           (lambda (x) (f x))) f)) x))))
;
; apply (one f) =>
; (lambda (f)
;   (lambda (x) (f ((one (lambda (x) (f x))) x))))
;
;
; for clear illustrate, let temp-f as (lambda (x) (f x))
; then it will be
; (lambda (f)
;   (lambda (x) (f ((one temp-f) x))))
;
; expand (one temp-f) =>
; (lambda (f)
;   (lambda (x) (f (((lambda (f)
;                      (lambda (x) (f x))) temp-f) x))))
;
; apply (one temp-f) => 
; (lambda (f)
;   (lambda (x) (f (((lambda (x) (temp-f x))) x))))
;
; =>
; (lambda (f)
;   (lambda (x) (f ((lambda (x) (f x)) x))))
;
; =>
; (lambda (f)
;   (lambda (x) (f (f x))))
;
; it is equal to two.
