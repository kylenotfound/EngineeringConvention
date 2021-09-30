(define (certificate Workshop_List)
    (cond
        ((and (>= (sum Workshop_List) 5) (dates Workshop_List)))
    )
)

(define (dates L)
    (cond
        ((null? L) #t)
        ((and (<= (startTimeFirstDay(car L)) (endTimeSecondDay(car(cdr L)))) (<= (startTimeSecondDay(car(cdr L))) (endTimeFirstDay(car L)))))
        (else (dates (cdr L)))
    )

)

(define (startTimeFirstDay L)
    (car(cdddr L)) ;fourth number of list passed
)

(define (endTimeSecondDay L)
    (car(cddddr L)) ;fifth number of list passed
)

(define (startTimeSecondDay L)
    (car(cdddr L))
)

(define (endTimeFirstDay L)
    (car(cddddr L))
)


(define (sum L)
    ;Gets every 2nd Element of the list, in the list and sum them.
    (cond ((null? L) 0)
        ((+ (car(cddr(car L))) (sum (cdr L))))
    )
)