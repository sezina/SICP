(define (f g)
  (g 2))

; when we run (f f)
; (f f)
; ...(f 2)
; ......goes wrong
; In first evaluate, the procedure parameter `g' have a value `f'
; which also a procedure;
; and then eval the body (g 2) which is (f 2), this is the second 
; evaluation of the procedure (f g).
; In this time, `g' will set to be 2; in this case 2 is not a procedure.
; thus, (2 2) cannot evaluate, we will get an 'The object 2 is not applicable';
