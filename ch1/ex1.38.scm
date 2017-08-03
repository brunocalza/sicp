#lang racket

(define (cont-frac-r n d k)
        (define (cont-frac-iter i)
                (if (< i k)
                    (/ (n i) (+ (d i) (cont-frac-iter (+ i 1))))
                    (/ (n i) (d i))))
        (cont-frac-iter 1))

(define e (+ 2(cont-frac-r (lambda (i) 1.0)
            (lambda (i)
                    (if (or (= (remainder i 3) 1) (= (remainder i 3) 0))
                        1
                        (* (+ 1 (quotient i 3)) 2)))
            1000)))