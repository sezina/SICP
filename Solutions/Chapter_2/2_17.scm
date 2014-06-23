(define (last-pair alist)
  (if (= 1 (length alist))
    alist
    (last-pair (cdr alist))))

(display "test: (last-pair (list 23 72 149 34))")
(newline)
(display (last-pair (list 23 72 149 34)))
