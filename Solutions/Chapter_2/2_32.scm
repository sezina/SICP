(define (subsets s)
  (if (null? s)
    (list '())
    (let ((rest (subsets (cdr s))))
      (append rest
              (map (lambda (sub-set)
                     (cons (car s) sub-set))
                   rest)))))
