(declare-const a Int)

(push)
(assert (not  ( => 1 ( => 0 (= 1 1) ) )  ))
(check-sat)
(get-model)
(pop)