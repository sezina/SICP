; The expression of the second condition, 
; (remainder (* (expmod ...) (expmod ...)) m),
; it will evaluate (expmod ...) before apply `*` and evaluate remainder.
; Because (expmod ...) is a procedure.
