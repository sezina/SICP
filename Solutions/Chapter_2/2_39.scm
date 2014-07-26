(load "2_38.scm")

(define (reverse1 sequence)
  (fold-right (lambda (x y) 
                (if (null? y)
                  (list x)
                  (append y (list x)))) nil sequence))

(define (reverse2 sequence)
  (fold-left (lambda (x y) (cons y x)) nil sequence))

(define l1 (list 1 2 3))
(display "list 1: ")
(display l1)
(newline)
(display "using fold-right (reverse1 l1) => ")
(display (reverse1 l1))
(newline)
(display "using fold-left (reverse2 l1) => ")
(display (reverse2 l1))
(newline)

