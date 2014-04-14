(load "fixed-point.scm")

(define tolerance 0.00001)

(define gold-ratio (fixed-point (lambda (x) (+ (/ 1 x) 1)) 1.0))

(define (cont-frac n d k)
  (define (iter i ans)
    (if (= i 0)
      ans
      (iter (- i 1) 
            (/ (n i) (+ ans (d i))))))
  (iter k 0))

(define (cont-frac-recur n d k)
  (define (recur x)
    (if (> x k)
      0
      (/ (n x)
         (+ (d x) (recur (+ x 1))))))
  (recur 1))

(define (precision4)
  (define (iter k)
    (if (< (abs (- (/ 1 gold-ratio)
                   (cont-frac (lambda (i) 1.0)
                              (lambda (i) 1.0)
                              k)))
           tolerance)
      k
      (iter (+ k 1))))
  (display "k need to be: ")
  (iter 1))
