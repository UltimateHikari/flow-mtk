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
$w^+$ means >  0 раз \

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
