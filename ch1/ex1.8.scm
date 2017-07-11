#lang racket

(define (average x y) (/ (+ x y) 2))
(define (improve guess x) (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))
(define (good-enough? guess old-guess epsilon)
        (< (abs (- guess old-guess))
           epsilon))
(define (cbrt-itr guess old-guess x)
        (if (good-enough? guess old-guess 0.000000001)
            guess
            (cbrt-itr (improve guess x) guess x)))

(define (cbrt x)
        (cbrt-itr 1 x x))

(provide average
         improve
         good-enough?
         cbrt-itr
         cbrt)