(define (bigger-sum-of-three a b c)
  (define a_plus_b (+ a b))
  (define a_plus_c (+ a c))
  (define b_plus_c (+ b c))
  (cond ((and (>= a_plus_b a_plus_c) (>= a_plus_b b_plus_c)) a_plus_b)
        ((and (>= a_plus_c a_plus_b) (>= a_plus_c b_plus_c)) a_plus_c)
        (else b_plus_c))
)

(bigger-sum-of-three 1 2 3) ; 5
