(declare-const a Int)

(push)
(assert (not  ( 101nd ( 101nd (= 1 1) (= 1 1) ) (= 1 1) )  ))
(check-sat)
(get-model)
(pop)
(push)
(assert (not  ( => ( not ( - a 105 ) ) (= 1 1) )  ))
(check-sat)
(get-model)
(pop)
(push)
(assert (not  ( => ( - a 105 ) (= 1 1) )  ))
(check-sat)
(get-model)
(pop)