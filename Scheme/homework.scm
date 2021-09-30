(define (certificate Workshop_List)
    (cond
        ((and (>= (sum Workshop_List) 5) (dates Workshop_List)))
    )
)

(define (dates L)
    (cond
        ((null? (cdr L)) #t)
        ((and (checkDates L) (checkDayNumber L) #f))
        (else (dates (cdr L)))
    )
)

(define (checkDates L)
    (cond
        ((null? L) #f)
        ((and (<= (startTimeFirstDay(car L)) (endTimeSecondDay(car(cdr L)))) (<= (startTimeSecondDay(car(cdr L))) (endTimeFirstDay(car L))) #t))
    )
)

(define (checkDayNumber L)
    (cond
        ((null? L) #f)
        ((equal? (checkDateOne L) (checkDateTwo L)))
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

(define (checkDateOne L)
    (car(cdr(car L)))
)

(define (checkDateTwo L)
    (car(cdr(cdr L)))
)


(define (sum L)
    ;Gets every 2nd Element of the list, in the list and sum them.
    (cond ((null? L) 0)
        ((+ (car(cddr(car L))) (sum (cdr L))))
    )
)