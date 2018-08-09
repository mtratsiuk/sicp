#lang sicp

(define (pascal-trian row index)
  (cond
    ((or (< index 0) (> index row)) (error "Element doesn't exist"))
    ((or (= index 0) (= index row)) 1)
    (else (+
           (pascal-trian (- row 1) (- index 1))
           (pascal-trian (- row 1) index)))))
