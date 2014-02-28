;Method 1
;(define (+ a b)
;  (if (= a 0)
;    b
;    (inc (+ (dec a) b))))
;
;Method 2
;(define (+ a b)
;  (if (= a 0)
;    b
;    (+ (dec a) (inc b))))

; For method 1
; (+ 4 5)
; (inc (+ (dec 4) 5)) -> (inc (+ 3 5))
; (inc (inc (+ (dec 3) 5))) -> (inc (inc (+ 2 5)))
; (inc (inc (inc (+ (dec 2) 5)))) -> (inc (inc (inc (+ 1 5))))
; (inc (inc (inc (inc (+ (dec 1) 5))))) -> (inc (inc (inc (inc (+ 0 5)))))
; (inc (inc (inc (inc 5))))
; (inc (inc (inc 6)
; (inc (inc 7))
; (inc 8)
; 9
; so, the process is recursive.
;
; For method 2
; (+ 4 5)
; (+ (dec 4) (inc 5)) -> (+ 3 6)
; (+ (dec 3) (inc 6)) -> (+ 2 7)
; (+ (dec 2) (inc 7)) -> (+ 1 8)
; (+ (dec 1) (inc 8)) -> (+ 0 9)
; 9
; The state of this process is summaried by a fixed number of
; state variables(a and b).
; thus, the process is iterative.
