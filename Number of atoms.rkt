#lang racket

;Брой на атомите в списъка:
(define(count_atoms lst)
  (cond((null? lst)0)
       ((atom?(car lst))
        (+ 1 (count_atoms(cdr lst))))
       (else(+(count_atoms(car lst))(count_atoms(cdr lst))) )))