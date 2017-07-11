#lang racket

(define (square x)(* x x))

(define (fast-exp b n)
        (fast-iter 1 b n))

(define (fast-iter a b n)
        (cond ((= n 0) a)
              ((even? n) (fast-iter a (square b) (/ n 2)))
              (else (fast-iter (* a b) b (- n 1)))))


(provide fast-exp)