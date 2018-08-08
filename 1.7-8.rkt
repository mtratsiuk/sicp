#lang sicp

(define (square x)
  (* x x))

(define (average x y) 
  (/ (+ x y) 2))

(define (improve-square guess x)
  (average guess (/ x guess)))

(define (improve-cube guess x)
  (/
   (+ (/ x (square guess))
      (* 2 guess))
   3))

(define prec 0.001)

(define (good-enough? prev-guess guess)
  (< (abs (- prev-guess guess)) prec))

(define (sqrt-iter improve prev-guess guess x)
  (if (good-enough? prev-guess guess)
      guess
      (sqrt-iter improve guess (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter improve-square x 1.0 x))

(define (crt x)
  (sqrt-iter improve-cube x 1.0 x))
