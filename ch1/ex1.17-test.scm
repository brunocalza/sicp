#lang racket
(require rackunit "ex1.17.scm")

(check-equal? (fast-mul 4 3) 12)
(check-equal? (fast-mul 1 1) 1)
(check-equal? (fast-mul 400 30) 12000)