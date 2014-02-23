(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; Follow the rule NO.2 of evaluation of a combination:
;   Applay the procedure that is the value of the leftmost subexpression(the operator) 
;   to the arguments that are the values of the other subexpressions(the operands).
;
; The leftmost subexpression in this combination is (if (> b 0) + -). Evaluate the 
; expression (> b 0), if b < 0, it will return False, otherwise, is True. Thus the 
; value of (if (> b 0) + -) will be `-` while b < 0, otherwise, will be `+`.
; Thus,
; If b > 0, (a-plus-abs-b a b) will become (+ a b),
; otherwise, (- a b).
