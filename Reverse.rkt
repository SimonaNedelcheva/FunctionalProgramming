#lang racket

(define(reverse n)
	(if(< n 10)n
		(glue(reminder n 10)
			(reverse(quotient n 10))
		)
	)
)
