;,load file_name
(define creditList '())

(define (certificate Workshop_List)
    (cond 
      (and 
        (not (checkCreditCount(sum(createCreditList(L)))) #f)
        (not (checkDates Workshop_List) #f)
      )#t
      (else #f)
    )
)

(define (createCreditList L)
    (creditList (car(cdr(car L)))) ;1st List 2nd Element
    (creditList (cdr(car(cdr(car(L))))))   ;2nd List 2nd Element
    (creditList (cdr(cdr(car(cdr(car(L)))))) ;3rd List 2nd Element
    (creditList (cdr(cdr(cdr(car(cdr(car(L)))))))) ;4th List 2nd Element
    (creditList (cdr(cdr(cdr(cdr(car(cdr(car(L))))))))) ;5th List 2nd Element
)


(define (sum L)
    (cond (null? L) 0
        (+ (car L) (sum (cdr L)))
    )
)

(define (checkCreditCount credits)
    (cond (>= credits 5)#t)
)