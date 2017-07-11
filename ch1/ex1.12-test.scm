#lang racket
(require rackunit "ex1.12.scm")

(check-equal? (pascal-triangle 1 1) 1)
(check-equal? (pascal-triangle 2 1) 1)
(check-equal? (pascal-triangle 2 2) 1)
(check-equal? (pascal-triangle 3 1) 1)
(check-equal? (pascal-triangle 3 2) 2)
(check-equal? (pascal-triangle 3 3) 1)
(check-equal? (pascal-triangle 5 2) 4)
(check-equal? (pascal-triangle 5 3) 6)
(check-equal? (pascal-triangle 5 4) 4)