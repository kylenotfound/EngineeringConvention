(define (certificate Workshop_List)
    (cond
        ((and (>= (sum Workshop_List) 5) (compare Workshop_List)))
    )
)

(define (compare L)
    (cond
        ((null? (cdr L)))
        ((and (checkDates (car L) (cdr L)) (checkDayNumber (car L) (cdr L)) )#f)
        (else (compare (cdr L)))
    )
)

(define (checkDates L J)
    (cond
        ((null? (cdr J) )#f)
        ((and (<= (startTimeFirstDay L) (endTimeSecondDay J)) (<= (startTimeSecondDay J) (endTimeFirstDay L)) #t))
        (else (checkDates L (cdr J)))
    )
)

(define (checkDayNumber L J)
    (cond
        ((null? (cdr J) )#f)
        ((equal? (checkDateOne L) (checkDateTwo J)) #t)
        (else (checkDayNumber L (cdr J)))
    )
)

(define (startTimeFirstDay L)
    (car(cdddr L)) ;4th element of the car of the list passed
)

(define (endTimeSecondDay L)
    (car(cddddr(car L))) ;5th element of the cdr of the list passed
)

(define (startTimeSecondDay L)
    (car(cdddr(car L))) ;4th element of the cdr of the list passed
)

(define (endTimeFirstDay L)
    (car(cddddr L))
)

(define (checkDateOne L)
    (car(cdr L)) ;car list's second element
)

(define (checkDateTwo L)
    (car(cdr(car L))) ;cdr list's second element
)


(define (sum L)
    ;Gets every 2nd Element of the list, in the list and sum them.
    (cond ((null? L) 0)
        ((+ (car(cddr(car L))) (sum (cdr L))))
    )
)