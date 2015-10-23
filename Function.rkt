#lang racket

;Функция от по-висок ред (T n a f)
 
(define(derive f dx)(lambda(x)(/(f(+ x dx))(f x))dx))
(define(derive_n f n)((repeat n derive)f))
(define(repeat n f)(if(= n 1)f
		(lambda(x)(f((repeat(- n 1)f)x))) ))
(define(T n a f)(lambda(i)(accumulate + 0
			lambda(i)(*((derive_n fi)a)
				(pow(- x a)i)(/ 1 fact(i)))
			0 plus n)))
(define(fact n)(if(or(= n 0)(= n 1))1 (* n (fact( - n 1)))))
