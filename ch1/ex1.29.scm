#lang racket
(define (cube x) (* x x x))

(define (sum f a next b)
        (if (> a b)
            0
            (+ (f a) (sum f (next a) next b))))

(define (simpson f a b n)
        (define h (/ (- b a) n))
        (define (yk k) (f (+ a (* k h))))
        (define (term k)
                (* (cond
                      ((= k 0) 1)
                      ((= k n) 1)
                      ((even? k) 2)
                      (else 4))
                    (yk k)))
        (define (inc x) (+ x 1))
        (* (/ h 3) (sum term 0 inc n)))