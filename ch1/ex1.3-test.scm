#lang racket
(require rackunit
         "ex1.3.scm")

(check-equal? (square 4) 16 "Testing square method with input 4")
(check-equal? (square 0) 0 "Testing square method with input 0")
(check-equal? (square -1) 1 "Testing square method with input -1")

(check-equal? (sumOfSquares -1 1) 2 "Testing sumOfSquares with inputs -1 and 1")
(check-equal? (sumOfSquares 3 4) 25 "Testing sumOfSquares with inputs 3 and 4")

(check-equal? (sumOfSquaresOfTwoLarger 1 2 3) 13 "Testing sumOfSquaresOfTwoLarger with inputs 1, 2 and 3")
(check-equal? (sumOfSquaresOfTwoLarger 1 3 2) 13 "Testing sumOfSquaresOfTwoLarger with inputs 1, 3 and 2")
(check-equal? (sumOfSquaresOfTwoLarger 2 1 3) 13 "Testing sumOfSquaresOfTwoLarger with inputs 2, 1 and 3")
(check-equal? (sumOfSquaresOfTwoLarger 2 3 1) 13 "Testing sumOfSquaresOfTwoLarger with inputs 2, 3 and 1")
(check-equal? (sumOfSquaresOfTwoLarger 3 2 1) 13 "Testing sumOfSquaresOfTwoLarger with inputs 3, 2 and 1")
(check-equal? (sumOfSquaresOfTwoLarger 3 1 2) 13 "Testing sumOfSquaresOfTwoLarger with inputs 3, 1 and 2")
(check-equal? (sumOfSquaresOfTwoLarger 3 2 1) 13 "Testing sumOfSquaresOfTwoLarger with inputs 3, 2 and 1")
(check-equal? (sumOfSquaresOfTwoLarger 3 0 4) 25 "Testing sumOfSquaresOfTwoLarger with inputs 3, 0 and 4")
