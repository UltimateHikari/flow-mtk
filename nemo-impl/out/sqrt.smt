(declare-const x Int)
(declare-const y Int)
(declare-const n Int)

(push)
(assert (not  ( => ( >= n 0 ) (= 1 1) )  ))
(check-sat)
(get-model)
(pop)
(push)
(assert (not  ( => ( not ( < y n ) ) ( and ( <= ( - x 1 ) n ) ( > ( + ( - x 1 ) 1 ) n ) ) )  ))
(check-sat)
(get-model)
(pop)
(push)
(assert (not  ( => ( < y n ) (= 1 1) )  ))
(check-sat)
(get-model)
(pop)