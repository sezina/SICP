(define (square x) (* x x))

(define (tree-map func tree)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
           (tree-map func sub-tree)
           (func sub-tree)))
       tree))

(define (square-tree tree) (tree-map square tree))

(define t1 (list 1 (list 2 (list 3 4) 5) (list 6 7)))
(display "(square-tree tree): ")
(display (square-tree t1))
