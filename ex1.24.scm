#lang racket
(define (runtime) (current-milliseconds))

(define (square x) (* x x))

(define (expmod base exp m)
        (cond ((= exp 0) 1)
        ((even? exp) (remainder (square (expmod base (/ exp 2) m)) m))
        (else (remainder (* base (expmod base (- exp 1) m)) m))))

(define (fermat-test n)
        (define (try-it a)
                (= (expmod a n n) a))
        (try-it (+ 1 (random 4294967087))))

(define (fast-prime? n times)
        (cond ((= times 0) true)
              ((fermat-test n) (fast-prime? n (- times 1)))
              (else false)))

(define (timed-prime-test n)
        (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
        (when (fast-prime? n 100) (report-time n (- (runtime) start-time))))

(define (report-time n elapsed-time)
        (newline)
        (display n)
        (display " *** ")
        (display elapsed-time))

(define (search-for-primes a b)
        (timed-prime-test a)
        (when (< a b) (search-for-primes (+ a 2) b)))

(search-for-primes 1000000001 1000000021)       
(search-for-primes 10000000001 10000000061)     
(search-for-primes 100000000001 100000000057)   
(search-for-primes 1000000000001 1000000000063)

;1000000007 *** 4      1000000007 *** 2
;1000000009 *** 3      1000000009 *** 2
;1000000021 *** 3      1000000021 *** 2
;10000000019 *** 10    10000000019 *** 6
;10000000033 *** 9     10000000033 *** 5
;10000000061 *** 9     10000000061 *** 6
;100000000003 *** 30   100000000003 *** 17
;100000000019 *** 29   100000000019 *** 18
;100000000057 *** 29   100000000057 *** 17
;1000000000039 *** 102 1000000000039 *** 56
;1000000000061 *** 92  1000000000061 *** 55
;1000000000063 *** 91  1000000000063 *** 55