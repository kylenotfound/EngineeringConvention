(define (classify n)
  (cond ((> n 100) "big")
        ((and(>= n 50) (<= n 100) "medium"))
        ((< n 50) "small")
  )
)

(define (contains_big L)
        (cond ((null? L) #f)
              ((equal? (classify (car L)) "big") #t)
              (else (contains_big (cdr L)))
        )
)

