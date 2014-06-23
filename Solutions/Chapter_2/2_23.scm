(define (for-each func items)
  (define (iter items)
    (if (null? items)
      #t
      (begin
        (func (car items))
        (iter (cdr items)))))
  (iter items))

(for-each (lambda (x) (newline) (display x)) (list 57 321 88))
