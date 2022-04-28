(define (countzeros B)
  (cond
   ((null? B) 0)
    ((= (car B) 0 ) (+ 1 (countzeros (cdr B))))
    (else (countzeros (cdr B)))))

(define (countones A)
  (cond
    ((null? A) 0)
    ((= (car A) 1 ) (+ 1 (countones (cdr A))))
    (else (countones (cdr A)))))

(define (divide D)
  (reverse (append (cdr (reverse D)) '(0) ))
)

(define (binaryProg C)
  (display "The number divided by 2 is ")
  (display (divide C))
  (display "\nThere were ") 
  (display(countzeros C))
  (display " zeros\n")
  (display "There were ") 
  (display(countones C))
  (display " ones\n") 
)


