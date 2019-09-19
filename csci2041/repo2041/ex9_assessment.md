## Assessment for Exercise Set 9

Run on April 03, 22:34:32 PM.

+ Pass: Change into directory "ex9".

### Part 1: Types and evaluation

+  _1_ / _1_ : Pass: Item 1 of list in types.md passes correct type on line 2, and line 3 not empty test

+  _1_ / _1_ : Pass: Item 2 of list in types.md passes correct type on line 2, and line 3 not empty test

+  _1_ / _1_ : Pass: Item 3 of list in types.md passes correct type on line 2, and line 3 not empty test

+  _1_ / _1_ : Pass: Item 4 of list in types.md passes correct type on line 2, and line 3 not empty test

+  _1_ / _1_ : Pass: Item 5 of list in types.md passes correct type on line 2, and line 3 not empty test

+  _1_ / _1_ : Pass: Item 6 of list in types.md passes correct type on line 2, and line 3 not empty test

+  _1_ / _1_ : Pass: Item 7 of list in types.md passes correct type on line 2, and line 3 not empty test

+  _1_ / _1_ : Pass: Item 8 of list in types.md passes correct type on line 2, and line 3 not empty test

#### Subtotal: _8_ / _8_

### Part 2: Buggy Proofs

+  _1_ / _1_ : Pass: Item 1 of list in bugs.md passes Test for correct line number after "Error Line:" test

+  _1_ / _1_ : Pass: Item 2 of list in bugs.md passes Test for correct line number after "Error Line:" test

+  _1_ / _1_ : Pass: Item 3 of list in bugs.md passes Test for correct line number after "Error Line:" test

+  _0_ / _1_ : Fail: Item 4 of list in bugs.md 

#### Subtotal: _3_ / _4_

### Part 3: Proofs

+  _0.0_ / _2_ : Pass: Score for pow2_nat.md.  Comments:




+  _0.5_ / _2_ : Pass: Score for tr_fact.md.  Comments:
>  Property is missing quantifier over accumulator. P(n): &forall;a, `tr_fact n a` ≡ `n! * a`

>  Base case should be proven for _all_ possible accumulator values

>  first step of step case is wrong, does not follow from definition of `tr_fact`





+  _0.5_ / _2_ : Pass: Score for tr_nat.md.  Comments:
>  Property is missing quantifier over accumulator

>  P identifies wrong induction variable (should be P(`m`))

>  What's `rfact` doing in your base case?

>  Need to prove base case for _all_ possible accumulator values

>  step case is wrong, since the code is not recursive in the accumulator n.





#### Subtotal: _1.0_ / _6_



Solutions to all exercise sets appear in [github](https://github.umn.edu/csci2041-s19/exsol2041-s19/)

