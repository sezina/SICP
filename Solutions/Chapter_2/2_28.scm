(define nil '())
(define x (list (list 1 2) (list 3 4)))

(newline)
(display "x: ")
(display x)

(define (fringe x)
  (define (iter items ans)
    (cond ((null? items) ans)
          ((not (pair? items)) (append ans (list items)))
          (else (append (iter (car items) ans)
                        (iter (cdr items) ans)))))
  (iter x '()))

; ship from next section
; (define (fringe-recursive tree)
;   (cond ((null? tree) nil)
;         ((not (pair? tree)) (list tree))
;         (else (append (fringe-recursive (car tree))
;                       (fringe-recursive (cdr tree))))))

(newline)
(display "(fringe x): ")
(display (fringe x))
(newline)
(display "(fringe (list x x)): ")
(display (fringe (list x x)))
