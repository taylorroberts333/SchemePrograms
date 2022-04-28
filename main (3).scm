(define (splitList A B C)
        (cond
              ((> B 0)(splitList (cdr A) (- B 1) (- C 1)))
              ((> C 0)(cons (car A) (splitList (cdr A) 0 (- C 1))))
        (else '())
         )
)

(define (indexGet lister A counter)
  (if (= counter A) (list (car lister)) (indexGet (cdr lister) A (+ 1 counter)))
)

(define (doSearch numSequence current A B)
   (
      if (> A B) -1
      (if (= current (car (indexGet numSequence (div (+ A B) 2) 0))) (div (+ A B) 2)
          (if (< current (car (indexGet numSequence (div (+ A B) 2) 0)))
              (doSearch numSequence current A (- (div (+ A B) 2) 1))(doSearch numSequence current (+ 1 (div (+ A B) 2)) B)
           )
      )
   )
)

(define (biSearch sequence number)
  (doSearch sequence number 0 (- (length sequence) 1))
)