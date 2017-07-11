#lang racket

(define (double x) (* 2 x))
(define (halve x) (/ x 2))

(define (fast-mul a b)
        (fast-mul-iter 0 a b))

(define (fast-mul-iter result a b)
        (cond ((= b 0) result)
              ((even? b) (fast-mul-iter result (double a) (halve b)))
              (else (fast-mul-iter (+ result a) a (- b 1)))))

(provide fast-mul)