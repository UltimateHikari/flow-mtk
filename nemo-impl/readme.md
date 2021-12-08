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
- [ ] отследить скобки в c2s
- [ ] пока руками копировать в z3 playground, проверить на unsat
- [ ] пошатать немного программу, убедиться что верификация работает
- [ ] (optional) генерировать сразу инпут для Z3 (с declare-const)
- [ ] (optional) разделить exp на те что должны быть в формула и остальные, забанить err в c2s

Note: в Z3 есть не только assert, он push и pop \
Note: кванторы всеобщности не очень хорошо, обойтись без них