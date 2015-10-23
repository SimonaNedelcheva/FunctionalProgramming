#lang racket

;Поток от четни числа:
(define(even_from n)
       (filter(even_from n)even?))