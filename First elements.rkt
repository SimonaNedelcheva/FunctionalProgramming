#lang racket

;Връша първите n елемента на списъка:
(define(only_first n lst)
   (define(helper lst result)
     (cond ((null? lst) result)
           ((= n 0) result)
           (else (helper(- n 1)(cdr lst)(cons (car lst) result)) )) ))
