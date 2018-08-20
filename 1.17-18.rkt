#lang sicp

(define (mult a b)
  (if (= b 0)
      0
      (+ a (mult a (- b 1)))))

(define (even? x)
  (= (remainder x 2) 0))

(define (double x) (* x 2))

(define (halve x) (/ x 2))

(define (fast-mult a b)
  (cond
    ((= b 0) 0)
    ((even? b) (fast-mult (double a) (halve b)))
    (else (+ a (fast-mult a (- b 1))))))

(define (fast-mult-iter a b acc)
  (cond
    ((= b 0) acc)
    ((even? b) (fast-mult-iter (double a) (halve b) acc))
    (else (fast-mult-iter a (- b 1) (+ acc a)))))
