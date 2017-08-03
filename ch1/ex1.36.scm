#lang racket
(define tolerance 0.00001)
(define (close-enough? x y)
        (< (abs (- x y)) tolerance))

(define (fixed-point f first-guess)
        (define (try guess)
                (display guess)
                (newline)
                (let ((next (f guess)))
                     (if (close-enough? guess next)
                         next
                         (try next))))
        (try first-guess))

(define (average x y) (/ (+ x y) 2))

(fixed-point (lambda (x) (/ (log 1000) (log x))) 2.0)

(fixed-point (lambda (x) (average x (/ (log 1000) (log x)))) 2.0)