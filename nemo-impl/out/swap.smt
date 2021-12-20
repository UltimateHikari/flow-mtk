(declare-const x Int)
(declare-const y Int)
(declare-const z Int)

(push)
(assert (not  ( => ( and ( = x 10 ) ( = y 20 ) ) ( and ( = ( - ( + 10 20 ) 10 ) 20 ) ( = ( - ( + 10 20 ) ( - ( + 10 20 ) 10 ) ) 10 ) ) )  ))
(check-sat)
(get-model)
(pop)