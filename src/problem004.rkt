#! /usr/local/bin/racket
#lang racket

(define (palindrome? str)
  (let ((chars (string->list str)))
    (equal? chars (reverse (chars)))))

(define products (remove-duplicates (for/list ([n1 (in-range 100 999)])
   (for/list ([n2 (in-range 100 999)])
     (* n1 n2)))))


(for/list ([n (in-list products)] #:when (palindrome? (number->string n)))
  n)
