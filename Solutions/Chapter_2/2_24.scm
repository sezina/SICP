(display "Result of (list 1 (list 2 (list 3 4))): ")
(newline)
(display (list 1 (list 2 (list 3 4))))

; box
; -->oo---->o\
;    |      |
;    |      |
;    1      o---->o\
;           |     |
;           |     |
;           2     oo---->o\
;                 |      |
;                 |      |
;                 3      4


; tree
;            /\
;           /  \
;          /   /\
;         /   /  \
;        1   2   /\
;               /  \
;              3    4
