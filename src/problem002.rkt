#! /usr/local/bin/racket
#lang racket

(define (next-fibonacci n1 n2 ns)
  (let ((sum (+ n1 n2)))
    (cond [(>= sum 4000000) ns]
          [else (next-fibonacci n2 sum (cons sum ns))])))

(define fibonacci-numbers (next-fibonacci 1 2 '(1 2)))
(apply + (filter even? fibonacci-numbers))
