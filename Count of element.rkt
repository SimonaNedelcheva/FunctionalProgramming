#lang racket

;Намира броя на срещанията на X елемент в списъка:
(define(count_elem x lst)
	(cond((null? lst)0)
	((equal? x(car lst))
	(+ 1(count_elem x(cdr lst)))
	(else(count_elem x(cdr lst))))))

