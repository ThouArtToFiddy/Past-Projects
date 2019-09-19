### Feedback for Exercise set 13

Run on April 30, 12:22:53 PM.

+ Pass: Change into directory "ex13".

+ Pass: Check that file "module-interface.md" exists.

+ Pass: Item 1 of list in module-interface.md passes  line 2 is "Legal" and line 3 is not empty  test

+ Pass: Item 2 of list in module-interface.md passes  line 2 is "Not legal" and line 3 is not empty test

+ Pass: Item 3 of list in module-interface.md passes  line 2 is "Not legal" and line 3 is not empty test

+ Pass: Item 4 of list in module-interface.md passes  line 2 is "Not legal" and line 3 is not empty test

+ Pass: Item 5 of list in module-interface.md passes  line 2 is "Not legal" and line 3 is not empty test

+ Pass: Item 6 of list in module-interface.md passes  line 2 is "Legal" and line 3 is not empty  test

+ Pass: Item 7 of list in module-interface.md passes  line 2 is "Legal" and line 3 is not empty  test

+ Pass: Item 8 of list in module-interface.md passes  line 2 is "Not legal" and line 3 is not empty test

+ Pass: Item 9 of list in module-interface.md passes  line 2 is "Not legal" and line 3 is not empty test

+ Pass: Check that file "modules.md" exists.

+ Pass: Check that file "functor-values.md" exists.

+ Pass: Item 1 of list in modules.md passes  line 2 is "Not legal" and line 3 is not empty test

+ Pass: Item 2 of list in modules.md passes  line 2 is "Legal" and line 3 is not empty  test

+ Pass: Item 3 of list in modules.md passes  line 2 is "Not legal" and line 3 is not empty test

+ Pass: Item 4 of list in modules.md passes  line 2 is "Legal" and line 3 is not empty  test

+ Pass: Item 5 of list in modules.md passes  line 2 is "Legal" and line 3 is not empty  test

+ Pass: Item 6 of list in modules.md passes  line 2 is "Not legal" and line 3 is not empty test

+ Pass: Item 7 of list in modules.md passes  line 2 is "Legal" and line 3 is not empty  test

+ Pass: Item 8 of list in modules.md passes  line 2 is "Not legal" and line 3 is not empty test

+ Fail: Item 1 of list in functor-values.md 

+ Pass: Item 2 of list in functor-values.md passes correct type and value test

+ Pass: Item 3 of list in functor-values.md passes correct type and value test

+ Pass: Item 4 of list in functor-values.md passes correct type and value test

+ Pass: Item 5 of list in functor-values.md passes correct type and value test

+ Pass: Check that file "functors.ml" exists.

+ Fail: Compiling functors.ml failed.  Skipping further tests.

+ Fail: 
Check that the result of evaluating
   ```
   Stack.pop (Stack.push "a" Stack.empty) = Stack.empty
   ```
   matches the pattern `true`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24m[1;31mError[0m: Unbound value Stack.empty
`


+ Fail: 
Check that the result of evaluating
   ```
   Stack.top (Stack.push 17 Stack.empty)
   ```
   matches the pattern `17`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24m[1;31mError[0m: Unbound value Stack.empty
`


+ Fail: Compiling functors.ml failed.  Skipping further tests.

+ Fail: 
Check that the result of evaluating
   ```
   let module N1 = Next(struct let n = 0 end) in N1.n
   ```
   matches the pattern `1`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24m[1;31mError[0m: Unbound module Next
`


+ Fail: 
Check that the result of evaluating
   ```
   N3.n
   ```
   matches the pattern `3`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24m[1;31mError[0m: Unbound module N3
`


+ Fail: 
Check that the result of evaluating
   ```
   let x = Nat.zero in ((Nat.decr (Nat.incr x)) = x)
   ```
   matches the pattern `true`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24m[1;31mError[0m: Unbound module Nat
`


+ Fail: 
Check that the result of evaluating
   ```
   Nat.to_int (Nat.incr Nat.zero)
   ```
   matches the pattern `1`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24m[1;31mError[0m: Unbound module Nat
`


+ Fail: 
Check that the result of evaluating
   ```
   Nat.to_int (Nat.of_int 3)
   ```
   matches the pattern `3`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24m[1;31mError[0m: Unbound module Nat
`


+ Fail: Compiling functors.ml failed.  Skipping further tests.

+ Fail: 
Check that the result of evaluating
   ```
   Nat.to_int (NatOps.plus (Nat.of_int 2) (Nat.of_int 3))
   ```
   matches the pattern `5`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24m[1;31mError[0m: Unbound module Nat
`


+ Fail: 
Check that the result of evaluating
   ```
   Nat.to_int (NatOps.times Nat.zero Nat.zero)
   ```
   matches the pattern `0`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24m[1;31mError[0m: Unbound module Nat
`


+ Fail: 
Check that the result of evaluating
   ```
   Nat.to_int (NatOps.times (Nat.of_int 2) (Nat.of_int 3))
   ```
   matches the pattern `6`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24m[1;31mError[0m: Unbound module Nat
`


+ Fail: 
Check that the result of evaluating
   ```
   Nat.to_int (NatOps.plus (Nat.of_int 1) Nat.zero)
   ```
   matches the pattern `1`.

   


   Your solution evaluated incorrectly and produced some part of the following:

 ` ;;
[24m[1;31mError[0m: Unbound module Nat
`


