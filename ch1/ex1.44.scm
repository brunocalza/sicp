#lang racket
(define (smooth f)
        (define dx 0.00001)
        (lambda (x)
                (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3)))

(define (compose f g)
        (lambda (x) (f (g x))))

(define (repeated f n)
        (if (= n 0)
            (lambda (x) x)
            (compose f (repeated f (- n 1)))))

(define (n-fold-smooth f n)
        ((repeated smooth n) f))