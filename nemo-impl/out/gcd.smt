(declare-const a Int)
(declare-const b Int)
(declare-const rem Int)

(push)
(assert (not  ( not ( < 234 16 ) )  ))
(check-sat)
(get-model)
(pop)
(push)
(assert (not  ( and ( and ( => ( or a ( net rem ) ) ( => ( not ( not ( < rem b ) ) ) ( => ( not b ) (= 1 1) ) ) ) ( => ( or a ( net rem ) ) ( => ( not ( < rem b ) ) ( or a ( net ( - rem b ) ) ) ) ) ) ( and ( => ( not ( < a b ) ) ( => ( not b ) (= 1 1) ) ) ( => ( not ( < a b ) ) ( => b ( or a ( net a ) ) ) ) ) )  ))
(check-sat)
(get-model)
(pop)