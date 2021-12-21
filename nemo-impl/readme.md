## NeMo implementation

- [x] Text -> NeMo AST Parser
- [x] VNeMo Structures
- [x] VNeMo Runner
- [x] NeMo -> VNeMo translator
- [x] Integration tests on Text -> result

Note: добавить синтаксический сахар в виде конструкций if и while  \
для облегчения тестирования

- [х] Тесты: gcd, swap, sqrt
- [х] разделить на maybe/nonmaybe ветки, далее - nonmaybe:
- [x] Добавить аннотации предусловия, постусловия (aProg)
- [x] забанить: nIter в пользу aIter, Prog в пользу aProg
- [x] *тестировать пока не заработает как надо*

- [x] починить сломанное == в формулах (возможно не только его)
- [x] спрятать n2ac и n2vc за n2c, дающей сразу $ \neg (AC & &(VC)) $
- [x] отследить скобки в c2s
- [x] пока руками копировать в z3 playground, проверить на unsat
- [x] (optional) генерировать сразу инпут для Z3 (с declare-const)
- [x] human-readable
- [x] выделить нормальные токены для Formula (f*)
- [x] порубить VC на массив формул
- [x] добиться unsat всех формул по отдельности (не забыть отрицание)
- [x] пошатать немного программу, убедиться что верификация работает
- [x] nod as z3 predicate
- [ ] predicate structure - partially
- [x] gcd annotations
- [ ] добавить верификацию массивов

Note: в Z3 есть не только assert, он push и pop \
Note: кванторы всеобщности не очень хорошо, обойтись без них

```
    Usage:
    $ yay z3
    $ z3 out/<filename>.smt
```

для gcd аннотация может быть что нод равен ноду, значит надо предикат добавить в самом z3 что является нодом (посмотреть как получше записать)

(define-fun divs ((a Int) (b Int)) Bool (= 0 (mod a b)) )
(define-fun nod ((a Int) (b Int) (d Int)) Bool (and (divs a d) (divs b d) (forall ((c Int)) ( => (< c (+ a b)) ( => (and (divs a c) (divs b c)) (divs d c) )))))