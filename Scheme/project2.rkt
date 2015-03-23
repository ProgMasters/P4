;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname project2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
(define (maxElement lst)  
(if (null? (cdr lst)) (car lst)
  (maxElement(cons (max (car lst) (car (cdr lst))) (cdr (cdr lst))))
  )
)

(define (elementAtIndex lst index)
  (if (= index 1) (car lst)
      (elementAtIndex (cdr lst) (- index 1)))
)

(define (compress lst)
  (cond((null? lst) '())
       ((null? (cdr lst)) lst)
       ((eq? (car lst) (car (cdr lst)))
        (compress (cdr lst)))
  (else (cons (car lst) (compress (cdr lst)))))
)

(define (maxofmax lst)
  (maxElement(map maxElement lst))
)

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

(define (wordsPerSentence lst)
  (map length lst)
)

(define (statsDocument lst)
  (list (sumList (charactersPerSentence lst))
        (sumList (wordsPerSentence lst))
        (length lst))
)

(maxElement '(5 3 7 2 6 1 4))

(elementAtIndex '(a b c d e f) 4)

(compress '(a a a b b c c c d d d d e f f))

(maxofmax '((5 3 6 2) (1 6 2 7) (7 3 8 2 9) (6 2 4 1)))

(split '(a b c d e f g) 3)

(sumList ' (5 4 3))

(charactersPerWord ' (Scheme is so wonderful))

(charactersPerSentence '((Hello Mary) (Scheme is so wonderful) (See you later) (John)))

(wordsPerSentence '((Hello Mary) (Scheme is so wonderful) (See you later) (John)))

(statsDocument '((Hello Mary) (Scheme is so wonderful) (See you later) (John)))