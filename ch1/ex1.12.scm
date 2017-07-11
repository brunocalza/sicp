#lang racket
(define (pascal-triangle level position)
        (cond ((= position 1) 1)
              ((= level position) 1)
              (else (+ (pascal-triangle (- level 1) (- position 1)) (pascal-triangle (- level 1) position)))))

(provide pascal-triangle)