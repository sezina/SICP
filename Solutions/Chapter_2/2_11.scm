(load "2_08.scm")

; the 9 situation
;1. [-, -] * [-, -]
;2. [-, -] * [-, +]
;3. [-, -] * [+, +]
;4. [-, +] * [-, -]
;5. [-, +] * [-, +]
;6. [-, +] * [+, +]
;7. [+, +] * [-, -]
;8. [+, +] * [-, +]
;9. [+, +] * [+, +]


(define (mul-interval x y)
  (let ((xl (lower-bound x))
        (xu (upper-bound x))
        (yl (lower-bound y))
        (yu (upper-bound y)))
    (cond ((and (< xu 0)
                (< yu 0))
           (make-interval (* xu yu) (* xl yl)))
          ((and (< xu 0)
                (and (< yl 0)
                     (or (= yu 0) (> yu 0))))
           (make-interval (* xl yu) (* xl yl)))
          ((and (< xu 0)
                (or (> yl 0) (= 0 yl)))
           (make-interval (* xl yu) (* xu yl)))
          ((and (and (< xl 0)
                     (or (> xu 0) (= xu 0)))
                (< yu 0))
           (make-interval (* xu yl) (* xl yl)))
          ((and (and (< xl 0)
                     (or (> xu 0) (= xu 0)))
                (and (< yl 0)
                     (or (> yu 0) (= yu 0))))
           (make-interval (min (* xl yu) (* xu yl))
                          (max (* xl yl) (* xu yu))))
          ((and (and (< xl 0)
                     (or (> xu 0) (= xu 0)))
                (> yl 0))
           (make-interval (* xl yu) (* xu yu)))
          ((and (> xl 0)
                (< yu 0))
           (make-interval (* xu yl) (* xl yu)))
          ((and (> xl 0)
                (and (< yl 0)
                     (or (= yu 0) (> yu 0))))
           (make-interval (* xu yl) (* xu yu)))
          ((and (> xl 0)
                (or (> yl 0) (= 0 yl)))
           (make-interval (* xl yl) (* xu yu))))))


; test
(define nn_inter (make-interval -3 -1))
(define np_inter (make-interval -2 1))
(define pp_inter (make-interval 1 3))
(display "negative negative inteval(nn_inter): ")
(print-interval nn_inter)
(display "negative positive interval(np_inter): ")
(print-interval np_inter)
(display "positive positive interval(pp_inter): ")
(print-interval pp_inter)

(display "case 1, nn_inter * nn_inter: ")
(print-interval (mul-interval nn_inter nn_inter))
(display "case 2, nn_inter * np_inter: ")
(print-interval (mul-interval nn_inter np_inter))
(display "case 3, nn_inter * pp_inter: ")
(print-interval (mul-interval nn_inter pp_inter))
(display "case 4, np_inter * nn_inter: ")
(print-interval (mul-interval np_inter nn_inter))
(display "case 5, np_inter * np_inter: ")
(print-interval (mul-interval np_inter np_inter))
(display "case 6, np_inter * pp_inter: ")
(print-interval (mul-interval np_inter pp_inter))
(display "case 7, pp_inter * nn_inter: ")
(print-interval (mul-interval pp_inter nn_inter))
(display "case 8, pp_inter * np_inter: ")
(print-interval (mul-interval pp_inter np_inter))
(display "case 9, pp_inter * pp_inter: ")
(print-interval (mul-interval pp_inter pp_inter))
