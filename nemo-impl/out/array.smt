(declare-const a (Array (Array Int Int) (Array Int Int)))
(declare-const b (Array Int Int))

(push)
(assert (not  (= 1 1)  ))
(check-sat)
(get-model)
(pop)