(declare-const a Int)
(declare-const b Int)

(push)
(assert (not  ( 3nd ( 3nd ( 3nd ( 3nd (= 1 1) (= 1 1) ) (= 1 1) ) (= 1 1) ) (= 1 1) )  ))
(check-sat)
(get-model)
(pop)