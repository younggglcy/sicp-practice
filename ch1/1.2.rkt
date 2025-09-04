(define six_plus_four_fifth (+ 6 (/ 4 5))) ; 6 + 4/5
(define numerator_part_1 (+ 5 4 )) ; 5 + 4
(define numerator_part_2 (- 2
    (- 3 six_plus_four_fifth)
  )) ; 2 - (3 - (6 + 4/5))
(define numerator (+ numerator_part_1 numerator_part_2))

(define denominator (* 3 (- 6 2) (- 2 7)))
(/ numerator denominator)
