(declare-const x Int)
(declare-const y Int)
(declare-const z Int)

(push)
(assert (not  ( => ( and ( and ( not ( < 10 x ) ) ( not ( < x 10 ) ) ) ( and ( not ( < 20 y ) ) ( not ( < y 20 ) ) ) ) ( and ( and ( not ( < 20 ( - ( + 10 20 ) 10 ) ) ) ( not ( < ( - ( + 10 20 ) 10 ) 20 ) ) ) ( and ( not ( < 10 ( - ( + 10 20 ) ( - ( + 10 20 ) 10 ) ) ) ) ( not ( < ( - ( + 10 20 ) ( - ( + 10 20 ) 10 ) ) 10 ) ) ) ) )  ))
(check-sat)
(get-model)
(pop)
(push)
(assert (not  (= 1 1)  ))
(check-sat)
(get-model)
(pop)