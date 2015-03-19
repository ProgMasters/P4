;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname split) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (firstPart lst len)
  (cond ((null? lst) '())
        ((= len 0) '())
  (else (cons (car lst) (firstPart (cdr lst) (- len 1)))))
)

(define (secondPart lst len)
  (cond ((null? lst) '())
        ((= len 0) lst)
  (else (secondPart (cdr lst) (- len 1))))
)

(define (split lst len)
  (list (firstPart lst len) (secondPart lst len))
)