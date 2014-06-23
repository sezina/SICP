; list-ref
(define (list-ref items n)
  (if (= n 0)
    (car items)
    (list-ref (cdr items) (- n 1))))

(define squares (list 1 4 9 16 25))

(list-ref squares 3)

; length recursive
(define (length-r items)
  (if (null? items)
    0
    (+ 1 (length-r (cdr items)))))

(define odds (list 1 3 5 7))

(length-r odds)

; length iteration
(define (length-i items)
  (define (length-iter a count)
    (if (null? a)
      count
      (length-iter (cdr a) (+ 1 count))))
  (length-iter items 0))

; append
(define (append list1 list2)
  (if (null? list1)
    list2
    (cons (car list1) (append (cdr list1) list2))))

(append squares odds)

(append odds squares)
