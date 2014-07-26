(define nil '())

(define (fold-right op initial sequence)
  (if (null? sequence)
    initial
    (op (car sequence)
        (fold-right op initial (cdr sequence)))))

(define (fold-left op initial sequence)
  (define (iter result rest)
    (if (null? rest)
      result
      (iter (op result (car rest))
            (cdr rest))))
  (iter initial sequence))

; 'op' require that
;   (op a b) equals (op b a) when,
;   a and b is real number, (abs a) is not equal to (abs b)

(newline)
(display "(fold-right / 1 (list 1 2 3)) => ")
(display (fold-right / 1 (list 1 2 3)))
(newline)
(display "(fold-left / 1 (list 1 2 3)) => ")
(display (fold-left / 1 (list 1 2 3)))
(newline)
(display "(fold-right list nil (list 1 2 3)) => ")
(display (fold-right list nil (list 1 2 3)))
(newline)
(display "(fold-left list nil (list 1 2 3)) => ")
(display (fold-left list nil (list 1 2 3)))
(newline)
(display "(fold-right + 0 (list 1 2 3)) => ")
(display (fold-right + 0 (list 1 2 3)))
(newline)
(display "(fold-left + 0 (list 1 2 3)) => ")
(display (fold-left + 0 (list 1 2 3)))

