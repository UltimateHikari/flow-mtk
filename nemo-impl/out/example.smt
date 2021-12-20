(declare-const a Int)
(declare-const b Int)

(push)
(assert (not  (= 1 1)  ))
(check-sat)
(get-model)
(pop)