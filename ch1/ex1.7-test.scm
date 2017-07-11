#lang racket
(require rackunit
         "ex1.7.scm")

(check-equal? (average 1 2) 3/2)

(check-equal? (improve 1 2) 3/2)
(check-equal? (improve 3/2 2) 17/12)
(check-equal? (improve 1.5 2) 1.4166666666666665)

(check-equal? (good-enough? 2 2.0001 0.001) true)
(check-equal? (good-enough? 2 2.0001 0.00001) false)
(check-equal? (good-enough? 2.0001 2 0.00001) false)

(check-= (sqrt-itr 1 4 4) 2 0.0001)
(check-= (sqrt-itr 1 2 3) 1.73205 0.0001)

(check-= (sqrt 4) 2 0.0001)
(check-= (sqrt 3) 1.73205 0.0001)