## Assessment for Exercise Set 10

Run on April 10, 00:50:19 AM.

+ Pass: Change into directory "ex10".

### Part 1: Induction Principles

+  _1_ / _1_ : Pass: Found sequence for btree

+  _1_ / _1_ : Pass: Found sequence for ttree

+  _1_ / _1_ : Pass: Found sequence for bexpr

+  _1_ / _1_ : Pass: Found sequence for nested

+  _1_ / _1_ : Pass: Found sequence for islist

#### Subtotal: _5_ / _5_

### Part 2: List Induction

+ Pass: Check that file "list.md" exists.

+  _0_ / _2_ : Pass: Proof that `sum (shift_right l) = sum l`

+  _2_ / _2_ : Pass: Proof that `length (append l1 l2) = (length l1) + (length l2)`

+  _0_ / _2_ : Pass: Proof that `length (shift_right l) = (length l)`

+  _2_ / _2_ : Pass: Proof that `mem x (append l1 l2) = (mem x l1) || (mem x l2)`

#### Subtotal: _4_ / _8_

### Part 3: Generalized Induction

+ Pass: Check that file "struct.md" exists.

+  _0_ / _2_ : Pass: Proof that `eval bx = Maybe => has_var bx = true`

+  _0_ / _2_ : Pass: Proof that `stree t v = stree (mirror t) v`

+  _0_ / _2_ : Pass: Proof that `size t = size (mirror t)`

+  _0_ / _2_ : Pass: Proof that `nmem x nl = mem x (flatten nl)`

#### Subtotal: _0_ / _8_



Solutions to all exercise sets appear in [github](https://github.umn.edu/csci2041-s19/exsol2041-s19/)

