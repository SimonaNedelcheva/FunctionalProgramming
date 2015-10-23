#lang racket

;Произведение от квадратите на нечетни елементи
(define (func lst)
  (accumukate * 1 (map(lambda(x)(* x x ))(filter odd? lst))))