; In the normal-order evaluation, there are 18 remainder operations. The procedure is following:
(gcd 206 40)
; expand
(if (= 40 0)
  206
  (gcd 40 (remainder 206 40)))
; call 
(gcd 40 (remainder 206 40))
; expand
(if (= (remainder 206 40) 0)
  40
  (gcd (remainder 206 40)
       (remainder 40 (remainder 206 40))))
; evaluate 
(if (= 6 0)     ; 1 remainder 
  40
  (gcd (remainder 206 40)
       (remainder 40 (remainder 206 40))))
; call
(gcd (remainder 206 40)
     (remainder 40 (remainder 206 40)))
; expand
(if (remainder 40 (remainder 206 40))
  (remainder 206 40)
  (gcd (remainder 40 (remainder 206 40))
       (remainder (remainder 206 40)
                  (remainder 40 (remainder 206 40)))))
; evaluate
(if (= 4 0)     ; 2 remainders
  (remainder 40 (remainder 206 40))
  (gcd (remainder 40 (remainder 206 40))
       (remainder (remainder 206 40)
                  (remainder 40 (remainder 206 40)))))
; call
(gcd (remainder 40 (remainder 206 40))
     (remainder (remainder 206 40)
                (remainder 40 (remainder 206 40)))))
; expand
(if (= (remainder (remainder 206 40)
                  (remainder 40 (remainder 206 40)))
       0)
  (remainder 40 (remainder 206 40))
  (gcd (remainder (remainder 206 40)
                  (remainder 40 (remainder 206 40)))
       (remainder (remainder 40 (remainder 206 40))
                  (remainder (remainder 206 40)
                             (remainder 40 (remainder 206 40))))))
; evaluate
(if (= 2 0)     ; 4 remainders
  (remainder 40 (remainder 206 40))
  (gcd (remainder (remainder 206 40)
                  (remainder 40 (remainder 206 40)))
       (remainder (remainder 40 (remainder 206 40))
                  (remainder (remainder 206 40)
                             (remainder 40 (remainder 206 40))))))
; call
(gcd (remainder (remainder 206 40)
                (remainder 40 (remainder 206 40)))
     (remainder (remainder 40 (remainder 206 40))
                (remainder (remainder 206 40)
                           (remainder 40 (remainder 206 40)))))
; expand
(if (= (remainder (remainder 40 (remainder 206 40))
                  (remainder (remainder 206 40)
                             (remainder 40 (remainder 206 40))))
       0)
  (remainder (remainder 206 40)
             (remainder 40 (remainder 206 40)))
  (gcd (remainder (remainder 40 (remainder 206 40))
                  (remainder (remainder 206 40)
                             (remainder 40 (remainder 206 40))))
       (remainder (remainder (remainder 206 40)
                             (remainder 40 (remainder 206 40)))
                  (remainder (remainder 40 (remainder 206 40))
                             (remainder (remainder 206 40)
                                        (remainder 40 (remainder 206 40)))))))
; evaluate
(if (= 0 0)     ; 7 remainders
  (remainder (remainder 206 40)
             (remainder 40 (remainder 206 40)))
  (gcd (remainder (remainder 40 (remainder 206 40))
                  (remainder (remainder 206 40)
                             (remainder 40 (remainder 206 40))))
       (remainder (remainder (remainder 206 40)
                             (remainder 40 (remainder 206 40)))
                  (remainder (remainder 40 (remainder 206 40))
                             (remainder (remainder 206 40)
                                        (remainder 40 (remainder 206 40)))))))
; now evaluate `a`
(if (= 0 0) 
  2             ; 4 remainders
  (gcd (remainder (remainder 40 (remainder 206 40))
                  (remainder (remainder 206 40)
                             (remainder 40 (remainder 206 40))))
       (remainder (remainder (remainder 206 40)
                             (remainder 40 (remainder 206 40)))
                  (remainder (remainder 40 (remainder 206 40))
                             (remainder (remainder 206 40)
                                        (remainder 40 (remainder 206 40)))))))


; In the application-order evaluation, there are only 4 remainder operations:
(gcd 206 40)
; expand
(if (= 40 0)
  206
  (gcd 40 (remainder 206 40)))  ; the remainder will be evaluate
; then
; (gcd 40 6)
; -> (gcd 6 (remainder 40 6))
; -> (gcd 6 4)
; ...
; -> (gcd 2 0)
; -> 2
