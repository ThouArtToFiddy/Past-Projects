### Feedback for Lab 6

Run on March 05, 11:24:24 AM.

+ Pass: Change into directory "lab6".

+ Pass: Check that an OCaml file "program.ml" has no syntax or type errors.

    OCaml file "program.ml" has no syntax or type errors.



+ Pass: Check that expression `typeof prog1 []` following file program.ml has type `expType`

+ Pass: Check that expression `typeof prog2 []` following file program.ml has type `expType`

+ Pass: 
Check that the result of evaluating
   ```
   try (let _ = typeof err1 [] in "well-typed") with Failure _ -> "type error"
   ```
   matches the pattern `"type error"`.

   




+ Pass: 
Check that the result of evaluating
   ```
   try (let _ = typeof err2 [] in "well-typed") with Failure _ -> "type error"
   ```
   matches the pattern `"type error"`.

   




+ Pass: 
Check that the result of evaluating
   ```
   find_constants e1
   ```
   matches the pattern `[Const 3; Const 7; BConst true; BConst false]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   find_constants badtype1
   ```
   matches the pattern `[Const 7; BConst true; Const 1; Const 3; BConst false]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   rm_vars e1
   ```
   matches the pattern `Let ("x", Const 3, Let( "y", Const 7, If (Gt(Const 0, Const 0), Print (BConst true), Print (BConst false))))`.

   




+ Pass: 
Check that the result of evaluating
   ```
   rm_vars (Let("artoo", Const 42, Name "artoo"))
   ```
   matches the pattern `Let ("artoo", Const 42, Const 0)`.

   




+ Pass: 
Check that the result of evaluating
   ```
   rm_vars (Let("z", BConst true, If(Name "z", Name "z", Not(Name "z"))))
   ```
   matches the pattern `Let("z", BConst true, If(BConst false, BConst false, Not(BConst false)))`.

   




