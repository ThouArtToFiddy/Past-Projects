## Assessment for HW2 parse_bracket_tests

Run on February 28, 21:33:24 PM.

+ Pass: Change into directory "hw2".

## Feedback Tests (total possible value: 1)

+ Pass: Check that file "regExpr.ml" exists.

+ Pass: Check that hw2 files compile without errors

+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   match (parse_bracket "ab") with Bracket _ -> true | _ -> false
   ```
   matches the pattern `true`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   try (let _ = (parse_bracket "z-a") in false) with Failure _ -> true
   ```
   matches the pattern `true`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   try (let _ = (parse_bracket "z--") in false) with Failure _ -> true
   ```
   matches the pattern `true`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   match (parse_bracket "za-") with Bracket _ -> true | _ -> false
   ```
   matches the pattern `true`.

   




+  _0.2_ / _0.2_ : Pass: 
Check that the result of evaluating
   ```
   match (parse_base_case [BR "za-"]) with (Bracket _, []) -> true | _ -> false
   ```
   matches the pattern `true`.

   




#### Subtotal: _1.0_ / _1.0_

## Random Tests

+ Pass: Check that file "regExpr.ml" exists.

+ Pass: Check that hw2 files compile without errors

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        match (RegExpr.parse_bracket "1-tb-f6-m") with RegExpr.Bracket _ -> true | _ -> false
        ```
        Matches the result of evaluating
        ```
        true
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        match (RegExpr.parse_bracket "^6-gl-t9-u") with RegExpr.Bracket _ -> true | _ -> false
        ```
        Matches the result of evaluating
        ```
        true
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        try (let _ = (RegExpr.parse_bracket "y-69-7c-1q-h") in false) with Failure _ -> true
        ```
        Matches the result of evaluating
        ```
        true
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        try (let _ = (RegExpr.parse_bracket "^n-k") in false) with Failure _ -> true
        ```
        Matches the result of evaluating
        ```
        true
        ```
        

#### Subtotal: _2.0_ / _2.0_

## Manual tests entered by TA: youn1995

+ Pass: Check that file "regExpr.ml" exists.

+  _4_ / _5_ : Pass: 
    
    Useful comments and indentation
    
    
     Score (out of 2):1 
    
    Overall grade for code quality
    
    
     Score (out of 3):3 


+ Pass: Other Stylistic Comments & Feedback

    Good work, but work on indentation. There is basically none for parse_bracket

#### Subtotal: _4_ / _5_

