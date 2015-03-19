;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname charactersPerSentence) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (sumList lst)
  (if (null? lst) 0
      (+ (car lst) (sumList (cdr lst))))
)

(define (charCount sym) (string-length (symbol->string sym)))

(define (charactersPerWord lst)
  (map charCount lst)
)

(define (charactersPerSentence lst)
  (map sumList (map charactersPerWord lst))
)