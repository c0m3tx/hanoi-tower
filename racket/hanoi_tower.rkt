#lang racket

(provide hanoi)

(define (hanoi n a b c)
  (if (= 1 n)
      1
      (+ (hanoi (- n 1) a c b) 1 (hanoi (- n 1) b a c))))

> (hanoi 32 4 5 6)