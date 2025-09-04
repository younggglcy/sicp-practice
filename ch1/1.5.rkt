;applicative-order evaluation: “evaluate the arguments and then apply”
;normal-order evaluation: “fully expand and then reduce”

;for given
;1. (define (p) (p))
;2. (define (test x y)
;  (if (= x 0) 0 y)
;)

; 1. using applicative-order evaluation, (test 0 (p)) will keep evaluating (p) forever
; 2. using normal-order evaluation, (test 0 (p)) will return 0 immediately
