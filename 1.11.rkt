#lang sicp

(define (f n)
  (if (< n 3)
      n
      (+
       (f (- n 1))
       (* 2 (f (- n 2)))
       (* 3 (f (- n 3))))))


(define (f-i n)
  (define (f-iter i a b c)
    (if (= i n)
        c
        (f-iter (+ 1 i) b c (+
                               c
                               (* 2 b)
                               (* 3 a)))))
  (if (< n 3)
      n
      (f-iter n 2 0 1 2)))
