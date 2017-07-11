#lang racket
(define (double x) (* 2 x))
(define (halve x) (/ x 2))
(define (fast-mul a b)
        (cond ((= b 0) 0)
              ((even? b) (double (fast-mul a (halve b))))
              (else (+ a (fast-mul a (- b 1))))))

(provide fast-mul)