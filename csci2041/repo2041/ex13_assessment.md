## Assessment for Exercise Set 13

Run on April 30, 11:23:43 AM.

+ Pass: Change into directory "ex13".

### Part 1: Modules and interfaces

+  _1_ / _1_ : Pass: Item 1 of list in module-interface.md passes  line 2 is "Legal" and line 3 is not empty  test

+  _1_ / _1_ : Pass: Item 2 of list in module-interface.md passes  line 2 is "Not legal" and line 3 is not empty test

+  _1_ / _1_ : Pass: Item 3 of list in module-interface.md passes  line 2 is "Not legal" and line 3 is not empty test

+  _1_ / _1_ : Pass: Item 4 of list in module-interface.md passes  line 2 is "Not legal" and line 3 is not empty test

+  _1_ / _1_ : Pass: Item 5 of list in module-interface.md passes  line 2 is "Not legal" and line 3 is not empty test

+  _1_ / _1_ : Pass: Item 6 of list in module-interface.md passes  line 2 is "Legal" and line 3 is not empty  test

+  _1_ / _1_ : Pass: Item 7 of list in module-interface.md passes  line 2 is "Legal" and line 3 is not empty  test

+  _1_ / _1_ : Pass: Item 8 of list in module-interface.md passes  line 2 is "Not legal" and line 3 is not empty test

+  _1_ / _1_ : Pass: Item 9 of list in module-interface.md passes  line 2 is "Not legal" and line 3 is not empty test

#### Subtotal: _9_ / _9_

### Part 2: Structs, signatures, sharing, and functors

+  _1_ / _1_ : Pass: Item 1 of list in modules.md passes  line 2 is "Not legal" and line 3 is not empty test

+  _1_ / _1_ : Pass: Item 2 of list in modules.md passes  line 2 is "Legal" and line 3 is not empty  test

+  _1_ / _1_ : Pass: Item 3 of list in modules.md passes  line 2 is "Not legal" and line 3 is not empty test

+  _1_ / _1_ : Pass: Item 4 of list in modules.md passes  line 2 is "Legal" and line 3 is not empty  test

+  _1_ / _1_ : Pass: Item 5 of list in modules.md passes  line 2 is "Legal" and line 3 is not empty  test

+  _1_ / _1_ : Pass: Item 6 of list in modules.md passes  line 2 is "Not legal" and line 3 is not empty test

+  _1_ / _1_ : Pass: Item 7 of list in modules.md passes  line 2 is "Legal" and line 3 is not empty  test

+  _1_ / _1_ : Pass: Item 8 of list in modules.md passes  line 2 is "Not legal" and line 3 is not empty test

+  _0_ / _1_ : Fail: Item 1 of list in functor-values.md 

+  _1_ / _1_ : Pass: Item 2 of list in functor-values.md passes correct type and value test

+  _1_ / _1_ : Pass: Item 3 of list in functor-values.md passes correct type and value test

+  _1_ / _1_ : Pass: Item 4 of list in functor-values.md passes correct type and value test

+  _1_ / _1_ : Pass: Item 5 of list in functor-values.md passes correct type and value test

#### Subtotal: _12_ / _13_

### Part 3: Module code

+  _0_ / _1_ : Fail: Compiling functors.ml failed.  Skipping further tests.

+  _0_ / _1_ : Fail: 
Check that the result of evaluating
   ```
   Stack.pop (Stack.push "a" Stack.empty) = Stack.empty
   ```
   matches the pattern `true`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24m[1;31mError[0m: Unbound value Stack.empty
`


+  _0_ / _1_ : Fail: 
Check that the result of evaluating
   ```
   Stack.top (Stack.push 17 Stack.empty)
   ```
   matches the pattern `17`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24m[1;31mError[0m: Unbound value Stack.empty
`


+  _0_ / _1_ : Fail: Compiling functors.ml failed.  Skipping further tests.

+  _0_ / _1_ : Fail: 
Check that the result of evaluating
   ```
   let module N1 = Next(struct let n = 0 end) in N1.n
   ```
   matches the pattern `1`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24m[1;31mError[0m: Unbound module Next
`


+  _0_ / _1_ : Fail: 
Check that the result of evaluating
   ```
   N3.n
   ```
   matches the pattern `3`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24m[1;31mError[0m: Unbound module N3
`


+  _0_ / _1_ : Fail: 
Check that the result of evaluating
   ```
   let x = Nat.zero in ((Nat.decr (Nat.incr x)) = x)
   ```
   matches the pattern `true`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24m[1;31mError[0m: Unbound module Nat
`


+  _0_ / _1_ : Fail: 
Check that the result of evaluating
   ```
   Nat.to_int (Nat.incr Nat.zero)
   ```
   matches the pattern `1`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24m[1;31mError[0m: Unbound module Nat
`


+  _0_ / _1_ : Fail: 
Check that the result of evaluating
   ```
   Nat.to_int (Nat.of_int 3)
   ```
   matches the pattern `3`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24m[1;31mError[0m: Unbound module Nat
`


+  _0_ / _1_ : Fail: Compiling functors.ml failed.  Skipping further tests.

+  _0_ / _1_ : Fail: 
Check that the result of evaluating
   ```
   Nat.to_int (NatOps.plus (Nat.of_int 2) (Nat.of_int 3))
   ```
   matches the pattern `5`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24m[1;31mError[0m: Unbound module Nat
`


+  _0_ / _1_ : Fail: 
Check that the result of evaluating
   ```
   Nat.to_int (NatOps.times Nat.zero Nat.zero)
   ```
   matches the pattern `0`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24m[1;31mError[0m: Unbound module Nat
`


+  _0_ / _1_ : Fail: 
Check that the result of evaluating
   ```
   Nat.to_int (NatOps.times (Nat.of_int 2) (Nat.of_int 3))
   ```
   matches the pattern `6`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24m[1;31mError[0m: Unbound module Nat
`


+  _0_ / _1_ : Fail: 
Check that the result of evaluating
   ```
   Nat.to_int (NatOps.plus (Nat.of_int 1) Nat.zero)
   ```
   matches the pattern `1`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24m[1;31mError[0m: Unbound module Nat
`


#### Subtotal: _0_ / _14_



Solutions to all exercise sets appear in [github](https://github.umn.edu/csci2041-s19/exsol2041-s19/)

