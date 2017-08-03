#lang racket

(define (cont-frac-r n d k)
        (define (cont-frac-iter i)
                (if (< i k)
                    (/ (n i) (+ (d i) (cont-frac-iter (+ i 1))))
                    (/ (n i) (d i))))
        (cont-frac-iter 1))

(define (cont-frac-i n d k)
        (define (cont-frac-iter result i)
                (if (< i k)
                    (/ (n i) (+ (d i) (cont-frac-iter result (+ i 1))))
                    (/ (n i) (+ (d i) result))))
        (cont-frac-iter 0 1))

(cont-frac-r (lambda (i) 1.0)
            (lambda (i) 1.0)
            100)

(cont-frac-i (lambda (i) 1.0)
            (lambda (i) 1.0)
            100)