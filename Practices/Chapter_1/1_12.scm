; presume that the position of first element in Pascal's trangle is [0, 0]
(define (pascal row col)
  (cond ((< row col) #f)
        ((or (= col 0) (= row col)) 1)
        (else 
          (+ (pascal (- row 1) (- col 1)) (pascal (- row 1) col)))))
