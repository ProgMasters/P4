;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname compress) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (compress lst)
  (cond((null? lst) '())
       ((null? (cdr lst)) (cons (car lst) '()))
       ((eq? (car lst) (car (cdr lst)))
        (compress (cdr lst)))
  (else (cons (car lst) (compress (cdr lst)))))
)