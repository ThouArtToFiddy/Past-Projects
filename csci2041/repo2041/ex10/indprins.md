## `type 'a btree = Empty | Node of 'a * 'a btree  * 'a btree`

  forall t : 'a btree . P(t) if
  + P(Empty)
  + forall t1, t2. P(t1) && P(t2) => P(Node(t1,t2))  


## `type 'a ttree = EmptyT | Leaf of 'a | TNode of 'a ttree * 'a ttree * 'a ttree`

  forall t : 'a ttree . P(t) if
  + P(EmptyT)
  + forall t. P(t) => P(Leaf(t))
  + forall t1, t2, t3. P(t1) && P(t2) && P(t3) => P(TNode(t1,t2,t3))

## `type bexpr = True | False | Var | Not of bexpr | And of bexpr * bexpr | Or of bexpr * bexpr`

  forall x : bexpr. P(x) if
  + P(True)
  + P(False)
  + P(Var)
  + forall x. P(x) => P(Not(bexpr))
  + forall x1, x2. P(x1) && P(x2) => P(And(x1,x2))
  + forall x1, x2. P(x1) && P(x2) => P(Or(x1,x2))

## `type 'a nested = Nil | Cons of 'a * 'a nested | Nest of 'a nested * 'a nested`

  forall l : 'a nested . P(l) if
  + P(Nil)
  + forall l. forall x : 'a. P(l) => P(Cons(x,l))
  + forall l1, l2. P(l1) && P(l2) => P(Nest(l1,l2))

## `type islist = End | I of int * islist | S of string * islist`

  forall l : islist . P(l) if
  + P(End)
  + forall l. forall x : int. P(l) => P(I(x,l))
  + forall l. forall x : string. P(l) => P(S(x,l))
