;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname maxofmax) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (maxElement lst)
  (if (null? (cdr lst)) (car lst)
  (maxElement(cons (max (car lst) (car (cdr lst))) (cdr (cdr lst))))
  )
)

(define (maxofmax lst)
  (maxElement(map maxElement lst))
)