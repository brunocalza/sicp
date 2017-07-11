#lang racket

(define (average x y) (/ (+ x y) 2))
(define (improve guess x) (average guess (/ x guess)))
(define (good-enough? guess old-guess epsilon)
        (< (abs (- guess old-guess))
           epsilon))
(define (sqrt-itr guess old-guess x)
        (if (good-enough? guess old-guess 0.00001)
            guess
            (sqrt-itr (improve guess x) guess x)))

(define (sqrt x)
        (sqrt-itr 1 x x))

(provide average
         improve
         good-enough?
         sqrt-itr
         sqrt)