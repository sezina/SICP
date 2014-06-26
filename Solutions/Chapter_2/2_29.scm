(load "count-leaves.scm")

(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))

; Part a
(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (let ((right (cdr mobile)))
    (if (= (length right) (count-leaves right))
      right
      (car right))))

(define (branch-length branch)
  (car branch))

(define (branch-structure branch)
  (let ((structure (cdr branch)))
    (if (= (length structure) (count-leaves structure))
      (if (pair? structure)
        (car structure)
        structure)
      (car structure))))

; Part b
(define (total-weight mobile)
  (cond ((not (list? mobile)) 0)
        ((and (= (length mobile) 2)
              (= (length mobile) (count-leaves mobile)))
         (branch-structure mobile))
        (else (+ (total-weight (left-branch mobile))
                 (total-weight (right-branch mobile))))))


; Part c



(newline)
(display "test cases: ")

(define b1 (make-branch 1 1))
(newline)
(display b1)
(define b2 (make-branch 2 2))
(newline)
(display b2)
(define b3 (make-branch 3 3))
(newline)
(display b3)
(define b4 (make-branch 4 b3))
(newline)
(display b4)
(newline)
(display "branch length: ")
(display (branch-length b4))
(newline)
(display "branch structure: ")
(display (branch-structure b4))


(define m1 (make-mobile b1 b2))
(newline)
(display m1)
(define m2 (make-mobile b2 b4))
(newline)
(display m2)
(newline)
(display "left branch: ")
(display (left-branch m2))
(newline)
(display "right branch: ")
(display (right-branch m2))

(newline)
(display "total-weight of m2: ")
(display (total-weight m2))
