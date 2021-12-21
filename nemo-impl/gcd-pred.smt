(define-fun divs ((a Int) (b Int)) Bool (= 0 (mod a b)) )
(define-fun greatest ((a Int) (b Int) (d Int)) Bool (forall ((c Int)) ( => (and (> c 0)(< c (+ a b))) ( => (and (divs a c) (divs b c)) (divs d c) ))) )
(define-fun nod ((a Int) (b Int) (d Int)) Bool (and (divs a d) (divs b d) (greatest a b d)))
(push)
(assert (divs 6 2))
(check-sat)
(pop)
(push)
(assert (nod 60 14 2))
(check-sat)
(pop)