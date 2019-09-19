## `type 'a btree = Empty | Node of 'a * 'a btree  * 'a btree`

  forall t : 'a btree . P(t) if
  +

## `type 'a ttree = EmptyT | Leaf of 'a | TNode of 'a ttree * 'a ttree * 'a ttree`

  forall t : 'a ttree . P(t) if
  +

## `type bexpr = True | False | Var | Not of bexpr | And of bexpr * bexpr | Or of bexpr * bexpr`

  forall x : bexpr . P(x) if
  +

## `type 'a nested = Nil | Cons of 'a * 'a nested | Nest of 'a nested * 'a nested`

  forall l : 'a nested . P(l) if
  +

## `type islist = End | I of int * islist | S of string * islist`

  forall l : islist . P(l) if
  +
