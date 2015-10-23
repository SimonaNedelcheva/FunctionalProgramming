#lang racket

;Намира на сумата на число
(define(sumDigits n)
	(if(< n 10)n
		(+ (reminder n 10)
			(sumDigits(quotient n 10)))
	)
)
