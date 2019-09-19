## Assessment for HW4 part4

Run on April 02, 22:22:57 PM.

This file contains assessment for part4

+ Pass: Change into directory "hw4".

+ Pass: Check that file "program.ml" exists.

+ Pass: Check that file "parser.ml" exists.

+ Pass: Check that file "progOpt.ml" exists.

+ Pass: Check that file "interpreter.ml" exists.

+ Pass: Check that hw4 files compile without errors

## Feedback Tests (total possible value: 2)

+  _0.5_ / _0.5_ : Pass: 
Check that the result of evaluating
   ```
   try (raise (ParseError ("",0))) with ParseError _ -> 1 | _ -> 2
   ```
   matches the pattern `1`.

   




+  _0.5_ / _0.5_ : Pass: 
Check that the result of evaluating
   ```
   try `No (_parser [OP; NOT; BCONST true; CONST 1; CONST 1]) with (ParseError ("parser: missing closing paren.",2)) -> `Yes
   ```
   matches the pattern ``Yes`.

   




+  _0.5_ / _0.5_ : Pass: 
Check that the result of evaluating
   ```
   find_line ["(+";"1";"2)"] 0
   ```
   matches the pattern `1`.

   




+  _0.5_ / _0.5_ : Pass: 
Check that the result of evaluating
   ```
   find_line ["(+";"1";"2)"] 2
   ```
   matches the pattern `2`.

   




#### Subtotal: _2.0_ / _2.0_

## Additional automated tests

+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    ( (try `No (_parser [OP; LET; ID "x"; LB; CONST 1; CONST 2; CONST 3; RB; CP]) with (ParseError _) -> `Yes))
   ```
   matches the pattern ` (`Yes)`.

   




+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    ( (try `No (parse_program [OP; PLUS; CONST 1; CONST 2; CP; OP; PLUS; CONST 3; CONST 4; CP]) with (ParseError _) -> `Yes))
   ```
   matches the pattern ` (`Yes)`.

   




+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    ( (find_line ["(let rev"; "(fun in : list"; "(let out []"; "(seq"; "(while (not (= in []))"; "(seq"; "(set out (cons (head in) out))"; "(set in (tail in))))"; "out)))"; "(let append (fun l1 : list (fun l2 : list "; "(seq"; "(set l1 (app rev l1))"; "(while (not (= l1 []))"; "(seq "; "(set l2 (cons (head l1) l2))"; "(set l1 (tail l1))))"; "l2"; ")))"; "(app (app append [1 2 3]) [4 5 6])))"] 14))
   ```
   matches the pattern ` (4)`.

   




+  _1.0_ / _1.0_ : Pass: 
Check that the result of evaluating
   ```
    ( (find_line ["(let rev"; "(fun in : list"; "(let out []"; "(seq"; "(while (not (= in []))"; "(seq"; "(set out (cons (head in) out))"; "(set in (tail in))))"; "out)))"; "(let append (fun l1 : list (fun l2 : list "; "(seq"; "(set l1 (app rev l1))"; "(while (not (= l1 []))"; "(seq "; "(set l2 (cons (head l1) l2))"; "(set l1 (tail l1))))"; "l2"; ")))"; "(app (app append [1 2 3]) [4 5 6])))"] 42))
   ```
   matches the pattern ` (8)`.

   




#### Subtotal: _4.0_ / _4.0_

## Manual tests entered by TA: youn1995

+  _1_ / _2_ : Pass: 
    Overall code quality for `part4`
    
    
     Score (out of 2):1 


+ Pass: Other Stylistic Comments & Feedback

    no comments, and your code calculates List.length wordlist ... twice, despite it only needing to be calculated once and stored in a local variable. This affects efficiency for large programs.

#### Subtotal: _1_ / _2_

