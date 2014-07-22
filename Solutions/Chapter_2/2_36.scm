(load "conventional-interface.scm")

(define (accumulate-n op init seqs)
  (if (null? (car seqs))
    nil
    (cons (accumulate op init (map (lambda (x) (car x)) seqs))
          (accumulate-n op init (map (lambda (x) (cdr x)) seqs)))))

(define s (list (list 1 2 3) (list 4 5 6) (list 7 8 9) (list 10 11 12)))
(display "s: ")
(display s)
(newline)
(display "(accumulate-n + 0 s) should be (22 26 30)")
(newline)
(display "(accumulate-n + 0 s) => ")
(display (accumulate-n + 0 s))
