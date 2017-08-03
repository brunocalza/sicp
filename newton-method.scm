#lang racket
(define tolerance 0.00001)
(define (close-enough? x y)
        (< (abs (- x y)) tolerance))

(define (fixed-point f first-guess)
        (define (try guess)
                (let ((next (f guess)))
                     (if (close-enough? guess next)
                         next
                         (try next))))
        (try first-guess))

(define (deriv g)
        (define dx 0.0000001)
        (lambda (x)
                (/ (- (g (+ x dx)) (g x))dx)))

(define (newton-transform g)
        (lambda (x)
                (- x (/ (g x) ((deriv g) x)))))
(define (newton-method g guess)
        (fixed-point (newton-transform g) guess))