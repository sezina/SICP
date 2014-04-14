; part a
(define (product term a next b)
  (if (> a b)
    1
    (* (term a)
       (product term (next a) next b))))

(define (pi-product a b)
  (define (pi-term x) 
    (if (= (remainder x 2) 1)
      (/ (+ x 1) (+ x 2))
      (/ (+ x 2) (+ x 1))))
  (define (pi-next x) (+ x 1))
  (product pi-term a pi-next b))

; part b
(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (* (term a) result))))
  (iter a 1))

(define (pi-product-iter a b)
  (define (pi-term x) 
    (if (= (remainder x 2) 1)
      (/ (+ x 1) (+ x 2))
      (/ (+ x 2) (+ x 1))))
  (define (pi-next x) (+ x 1))
  (product-iter pi-term a pi-next b))
