(declare-const a Int)
(declare-const array (Array Int Int))
(declare-const nightmare (Array (Array (Array (Array (Array Int Int) (Array Int Int)) (Array (Array Int Int) (Array Int Int))) (Array (Array (Array Int Int) (Array Int Int)) (Array (Array Int Int) (Array Int Int)))) (Array (Array (Array (Array Int Int) (Array Int Int)) (Array (Array Int Int) (Array Int Int))) (Array (Array (Array Int Int) (Array Int Int)) (Array (Array Int Int) (Array Int Int))))))

(push)
(assert (not  (= 1 1)  ))
(check-sat)
(get-model)
(pop)