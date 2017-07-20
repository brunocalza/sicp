#lang racket
(define (product term a next b)
        (if (> a b)
            1
            (* (term a) (product term (next a) next b))))

(define (product-iter term a next b)
        (define (iter a result)
                (if (> a b)
                result
                (iter (next a) (* result (term a)))))
        (iter a 1))

(define (factorial n)
        (define (identity x) x)
        (define (inc x) (+ x 1))
        (product identity 1 inc n))

(define (pi)
         (define (pi-term n) 
                 (if (even? n) 
                     (/ (+ n 2) (+ n 1)) 
                     (/ (+ n 1) (+ n 2))))
        (define (inc x) (+ x 1))
        (* 4.0 (product pi-term 1 inc 100)))