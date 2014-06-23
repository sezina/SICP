(load "list-op.scm")
(load "2_17.scm")
(define (reverse alist)
  (if (= (length alist) 1)
    alist
    (append (reverse (cdr alist)) (list (car alist)))))

(display "2_18.scm")
(newline)
(display "test cast: (list 1 4 9 16 25)")
(newline)
(display "test recursive reverse: ")
(newline)
(display (reverse (list 1 4 9 16 25)))
