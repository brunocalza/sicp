#lang racket
(require rackunit "ex1.11.scm")

(check-equal? (f 0) 0)
(check-equal? (f 1) 1)
(check-equal? (f 2) 2)
(check-equal? (f 3) 4)
(check-equal? (f 4) 11)
(check-equal? (f 5) 25)
(check-equal? (f 6) 59)