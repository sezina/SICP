(load "conventional-interface.scm")

(define (count-leaves t)
  (accumulate +
              0
              (map 
                (lambda (x) 1)
                (enumerate-tree t))))

(define t1 (cons (list 1 2) (list 3 4)))
(display "tree 1: ")
(display t1)
(newline)
(display "(count-leaves t1) => ")
(display (count-leaves t1))
(newline)

(define t2 (list t1 t1))
(display "tree 2: ")
(display t2)
(newline)
(display "(count-leaves t2) => ")
(display (count-leaves t2))
