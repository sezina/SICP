(define x (list (list 1 2) (list 3 4)))
(newline)
(display "x: ")
(display x)

(define (deep-reverse x)
  (define (iter items ans)
    (if (null? items)
      ans
      (let ((head (car items))
            (tail (cdr items)))
        (if (list? head)
          (iter tail (append (list (deep-reverse head)) ans))
          (iter tail (append (list head) ans))))))
  (iter x '()))

(newline)
(display "(deep-reverse x): ")
(display (deep-reverse x))
