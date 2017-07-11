#lang racket
(require rackunit "ex1.16.scm")

(check-equal? (fast-exp 1 2) 1)
(check-equal? (fast-exp 2 4) 16)
(check-equal? (fast-exp 3 3) 27)