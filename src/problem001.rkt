#! /usr/local/bin/racket
#lang racket

(define (multiple_of_3_or_5? n)
  (match (list (remainder n 3) (remainder n 5))
         [(list 0 _) n]
         [(list _ 0) n]
         [_          0]))

(for/sum ([n 1000])
  (multiple_of_3_or_5? n))
