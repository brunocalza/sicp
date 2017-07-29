#lang racket
(define (filtered-accumulate filter combiner null-value term a next b)
        (if (> a b)
            null-value
            (if (filter a)
                (combiner (term a) (filtered-accumulate filter combiner null-value term (next a) next b))
                (combiner null-value (filtered-accumulate filter combiner null-value term (next a) next b)))))

(define (square x) (* x x))

(define (divides? a b)
        (=  (remainder b a) 0))

(define (find-divisor n test-divisor)
        (cond ((> (square test-divisor) n) n)
              ((divides? test-divisor n) test-divisor)
              (else (find-divisor n (+ test-divisor 1)))))

(define (smallest-divisor n)
        (find-divisor n 2))

(define (prime? n) 
        (if (= n 1) false (= n (smallest-divisor n)))) 

(define (identity x) x)
(define (inc x) (+ 1 x))

(define (relative-prime? a b)
        (= (gcd a b) 1))

(define (sum-of-squares-of-primes a b)
        (filtered-accumulate prime? + 0 square a inc b))

(define (product-of-relative-primes n)
        (define (filter x)
                (relative-prime? x n ))
        (filtered-accumulate filter * 1 identity 1 inc n))