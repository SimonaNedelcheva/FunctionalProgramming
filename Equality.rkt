#lang racket

;Дадени са естествените числа n и m (n, m ≥ 1). Да се напише програма, която проверява дали e в сила тъждеството:
(define(func n m)(=
		(accumulate + 0(lambda(i)(/ 1 (accumulate * 1 (lambda(k)k) i plus (+ i m) ) )) 1 plus n)
		(*(/ 1 m)(- (/ 1 (fact n))(/ 1 (accumulate * 1(lambda(k)(+ n k)) 1 plus m))))
		)
)
(define(fact n)(if(or(= n 0)(= n 1))1 (* n (fact( - n 1)))))