#lang racket
(define (square x) (* x x))
(define (sumOfSquares x y)
        (+ (square x)
           (square y)))
(define (sumOfSquaresOfTwoLarger x y z)
        (if (> x y)
            (if (> y z)
                (sumOfSquares x y)
                (sumOfSquares x z))
            (if (> x z)
                (sumOfSquares x y)
                (sumOfSquares y z))))
(provide square
         sumOfSquares
         sumOfSquaresOfTwoLarger)