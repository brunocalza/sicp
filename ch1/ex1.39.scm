#lang racket

(define (cont-frac-r n d k)
        (define (cont-frac-iter i)
                (if (< i k)
                    (/ (n i) (+ (d i) (cont-frac-iter (+ i 1))))
                    (/ (n i) (d i))))
        (cont-frac-iter 1))

(define (tan-cf x k)
        (cont-frac-r (lambda (i)
                          (if (= i 1)
                              x
                              (- (* x x))))
                     (lambda (i)
                          (- (* 2.0 i) 1))
                     k))
(tan-cf 3 10)
(tan 3) 