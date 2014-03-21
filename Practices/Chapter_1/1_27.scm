(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else 
          (remainder (* base (expmod base (- exp 1) m))
                     m))))

(define (fermat-check n base)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it base))

(define (carmichael-cheat n)
  (define (carmichael-check n base)
    (cond ((= base 0) true)
          ((fermat-check n base) (carmichael-check n (- base 1)))
          (else false)))
  (carmichael-check n (- n 1)))

; (carmichael-cheat 561) => #t
; (carmichael-cheat 1105) => #t
; (carmichael-cheat 1729) => #t
; (carmichael-cheat 2465) => #t
; (carmichael-cheat 2821) => #t
; (carmichael-cheat 6601) => #t
