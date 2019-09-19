### Feedback for Lab 4

Run on February 19, 11:05:10 AM.

+ Pass: Change into directory "lab4".

+ Pass: Check that file "arithExp.ml" exists.

+ Pass: Check that an OCaml file "arithExp.ml" has no syntax or type errors.

    OCaml file "arithExp.ml" has no syntax or type errors.



+ Pass: 
Check that the result of evaluating
   ```
   e1
   ```
   matches the pattern `AddExpr (ConstExpr 1.414, MultExpr (ConstExpr 3.14, ConstExpr 2.))`.

   




+ Pass: Check that expression `e2` following file arithExp.ml has type `arithExpr`

+ Pass: Check that expression `DIV` following file arithExp.ml has type `arithToken`

+ Pass: 
Check that the result of evaluating
   ```
   token_list "/"
   ```
   matches the pattern `[DIV]`.

   




+ Pass: Check that expression `DivExpr (ConstExpr 1., ConstExpr 1.)` following file arithExp.ml has type `arithExpr`

+ Pass: 
Check that the result of evaluating
   ```
   rpnParse [CONST 1.; CONST 2.; DIV]
   ```
   matches the pattern `DivExpr (ConstExpr 1., ConstExpr 2.)`.

   




+ Pass: 
Check that the result of evaluating
   ```
   arithExpEval (DivExpr (ConstExpr 1., ConstExpr 2.))
   ```
   matches the pattern `0.5`.

   




+ Pass: Check that file "maps_r_us.ml" exists.

+ Pass: Check that an OCaml file "maps_r_us.ml" has no syntax or type errors.

    OCaml file "maps_r_us.ml" has no syntax or type errors.



+ Pass: You are not allowed to use recursion.

   



+ Pass: 
Check that the result of evaluating
   ```
   to_meters [(6,0); (5,8)]
   ```
   matches the pattern `[1.82; 1.72]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   rot13 "a happy string"
   ```
   matches the pattern `"n unccl fgevat"`.

   




+ Pass: 
Check that the result of evaluating
   ```
   rot13 "pizza"
   ```
   matches the pattern `"cvmmn"`.

   




