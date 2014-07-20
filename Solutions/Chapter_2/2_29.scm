(load "count-leaves.scm")

(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))

; Part a
(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (car (cdr mobile)))

(define (branch-length branch)
  (car branch))

(define (branch-structure branch)
  (car (cdr branch)))

; Part b
(define (branch-weight branch)
  (newline)
  (display branch)
  (if (mobile? (branch-structure branch))
    (total-weight (branch-structure branch))
    (branch-structure branch)))

(define (mobile? structure)
  (list? structure))

(define (total-weight mobile)
  (+ (branch-weight (left-branch mobile))
     (branch-weight (right-branch mobile))))


; Part c
(define (torque branch)
  (* (branch-length branch)
     (branch-weight branch)))

(define (branch-balance? left right)
  (= (torque left)
     (torque right)))

(define (mobile-balance? mobile)
  (let ((left (left-branch mobile))
        (right (right-branch mobile)))
    (let ((left-struct (branch-structure left))
          (right-struct (branch-structure right)))
      (and (branc-balance? left right)
           (if (mobile? left-struct)
             (mobile-balance? left-struct)
             #t)
           (if (mobile? right-struct)
             (mobile-balance? right-struct)
             #t)))))

; Part d
; change the accessors of mobile and branch
