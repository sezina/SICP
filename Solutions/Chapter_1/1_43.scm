(load "1_42.scm")

(define (repeated f times)
    (if (= times 1)
      f 
      (compose f 
               (repeated f (- times 1)))))

((repeated square 2) 5)  ; => 625
