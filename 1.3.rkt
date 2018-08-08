#lang sicp

(define (square x) (* x x))

(define (max a b)
  (if (>= a b) a b))

(define (min a b)
  (if (< a b) a b))

(define (sum-of-squares-largest a b c)
  (+
    (square (max a b))
    (square (max c (min a b)))))

(= (sum-of-squares-largest 1 2 3) 13)
(= (sum-of-squares-largest 0 0 0) 0)
(= (sum-of-squares-largest 1 0 0) 1)
(= (sum-of-squares-largest 1 1 0) 2)
(= (sum-of-squares-largest 2 1 2) 8)
(= (sum-of-squares-largest 1 1 2) 5)
