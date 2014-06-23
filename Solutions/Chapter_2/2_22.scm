(define (square x) (* x x))
(define (square-list1 items)
  (define (iter things answer)
    (if (null? things)
      answer
      (iter (cdr things)
            (cons (square (car things))
                  answer))))
  (iter items '()))

;(cons 16 
;      (cons 9 
;            (cons 4
;                  (cons 1 '()))))
;
;==> (list 16 9 4 1)

(define (square-list2 items)
  (define (iter things answer)
    (if (null? things)
      answer
      (iter (cdr things)
            (cons answer
                  (square (car things))))))
  (iter items '()))

;(cons (cons (cons (cons '() 1) 4) 9) 16)
