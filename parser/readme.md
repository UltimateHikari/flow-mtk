# parser
* string -> tree
* (1 + (2 * 3)) - (a) 

```
s -> (s + s); | (s * s) | d (digit)
d -> 0d | 1d | ... |  9d | 0 | ... | 9
```

дерево синт. разбора - AST \
для (1+(2*3)): \
AST(a) = sum(int, prod(int,int))

## first iteration 

    ArExp ::= ArSum, ArProd, ArInt;
    ArSum(l: ArExp, r: ArExp);
    ArProd(l: ArExp, r: ArExp);
    ArInt(val: int);

    parse(s: string) -> Maybe<ArExp>;

## second iteration
peg-parser

$w^*$ means > -1 раз \
$w^+$ means >  0 раз 

    s = sum | prod | int
    sum = "(" s "+" s ")"
    int = digit+
    digit = '0'-'9'

## Семантические действия

:a - метка \
{} - семантический бинд \
$a - метка строки слева \
разыменовываются метки аналогично, т.е. w+:a .... { foo(l:a) };

## whitespaces

The best policy is to add "ws" at the start of the top-level grammar, and then after each token or terminal rule. Then you have the invariant that every non-terminal rule supports and parses trailing ws. (lingo.md)

* напечатать дерево красиво

## 2 пара

можно еще посчитать (ae2t), или транслировать во что-то не теряя смысла \
например, в обратную польскую ae2rpn (1 2 3 * +)                        \
делимся на оператор - операнд                                           

```
RpnE ::= RpnOp | RpnArg; //(Rpn elem) 
RpnArg : (val:int);
RpnOp : (op:string, foo: (int, int) -> int);
```

хотим функции: \ 
rpn2s  -> string (распечатать)  \
rpn2t  -> int    (вычислить)    \
rpn2ae -> Aexp   (обратно)      

## 3 пара
хотим полиморфно считать через стек 
```
evalRpn(r : [RpnE], '?') -> Maybe<?>;
RpnArg : (val : ?)
```
тогда 
```
ae2rpni(a:ArExp) -> [RpnE<int>]
rpni2rpnae(a:[RpnE<int>]) -> [RpnE<AeExp>]{
    map(a, switch{...});
}
```
Что дальше:                         
* расширить до + - * /              
* переменные $ ((a+(b*c))*3) $      
* вычисление
* символьное дифференциирование
```
alg2i(a : AlgExp, args : Tree<string, int>) -> Maybe<int>
dAlg(a : AlgExp, param : string) -> AlgExp
```

## после 4 пары

- [x] +-*/
- [x] символьные переменные
- [x] подстановка переменных
- [x] символьное дифференциирование
- [ ] упрощение выражений

Note: из соображений лени построил алгебраические выражения поверх арифметических,  \
теперь ArExp эффективно является AlgExp, прямое вычисление должно давать None()     \
а подстановка aeSmp возвращает более вероятно вычисляемое выражение                 \
(но то же деление на ноль никто не отменял)

## 5 пара
преобразование к рациональному виду \
преобразовать сложное выражение из дробей к \
$RatExp := \frac{P(x)}{Q(x)}$ \
завести структуры для дроби

```
alg2rat(a:AlgExp) -> RatExp {
    switch .... по правилам
}
sum, prod полиномов 
Poly(m: Tree<Mon, mt>)
sumPoly : mergeTree (mergeTreeCustom) (*)
prodPoly:  двойной fold
оптимизация - отбрасывать нулевые слагаемые
prodMon: mergeTree
```

Mon(v: Tree<string, int>, pairArray())                 \
(*) равенства деревьев зависят от структуры дерева     \
по-хорошему пишем сравнение деревьев, если не равны                 

## 6 пара

закончил тесты, коэффициенты верные по модулю - где-то потерялись все минусы. \
перешел к peg-парсеру nemo.