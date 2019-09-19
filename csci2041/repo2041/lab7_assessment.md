## Assessment for Lab 7

Run on March 15, 13:09:27 PM.

+ Pass: Change into directory "lab7".

+  _1_ / _1_ : Pass: Check that an OCaml file "prog.ml" has no syntax or type errors.

    OCaml file "prog.ml" has no syntax or type errors.



+  _1_ / _1_ : Pass: Check that expression `(UnboundName "s",ArithTypeErr (UnitR,UnitR),CondTypeErr (IntR 1), CompTypeErr (UnitR,UnitR))` following file prog.ml has type `exn * exn * exn * exn`

+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   try (let _ = eval p0 [] in 0) with UnboundName _ -> 1 | _ -> (-1)
   ```
   matches the pattern `1`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   try (let _ = eval p1 [] in 0) with ArithTypeErr _ -> 1 | _ -> (-1)
   ```
   matches the pattern `1`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   try (let _ = eval p2 [] in 0) with CondTypeErr _ -> 1 | _ -> (-1)
   ```
   matches the pattern `1`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   try (let _ = eval p3 [] in 0) with CompTypeErr _ -> 1 | _ -> (-1)
   ```
   matches the pattern `1`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   try (let _ = eval p4 [] in 0) with CondTypeErr _ -> 1 | _ -> (-1)
   ```
   matches the pattern `1`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   try (let _ = runProg p0 in 0) with  _ -> (-1)
   ```
   matches the pattern `0`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   try (let _ = runProg p1 in 0) with  _ -> (-1)
   ```
   matches the pattern `0`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   try (let _ = runProg p2 in 0) with  _ -> (-1)
   ```
   matches the pattern `0`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   try (let _ = runProg p3 in 0) with  _ -> (-1)
   ```
   matches the pattern `0`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   try (let _ = runProg p4 in 0) with  _ -> (-1)
   ```
   matches the pattern `0`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   append_k [1; 2] [3; 4]
   ```
   matches the pattern `[1; 2; 3; 4]`.

   




+  _1_ / _1_ : Pass: Check that evaluating ignore(append_k (long_assoc 10000 []) [("a",10)]) in file kfuncs.ml does not result in a stack overflow.

+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   assoc_update_k "v1" 4 [("v2",3); ("v1", 6); ("v0", 9)]
   ```
   matches the pattern `[("v2",3); ("v1",4); ("v0", 9)]`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   assoc_update_k "u" 1 [("v",0); ("x",0)]
   ```
   matches the pattern `[("v",0); ("x",0); ("u",1)]`.

   




+  _1_ / _1_ : Pass: Check that evaluating ignore(assoc_update_k "u" 0 (long_assoc 10000 [("u",1)])) in file kfuncs.ml does not result in a stack overflow.

#### Total score: _17_ / _17_

