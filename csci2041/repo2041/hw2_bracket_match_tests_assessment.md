## Assessment for HW2 bracket_match_tests

Run on March 01, 23:35:14 PM.

+ Pass: Change into directory "hw2".

## Feedback Tests (total possible value: 1)

+ Pass: Check that file "regExpr.ml" exists.

+ Pass: Check that hw2 files compile without errors

+  _0.3333333333333333_ / _0.3333333333333333_ : Pass: 
Check that the result of evaluating
   ```
   bracket_match (parse_bracket "a-f0-9") 'c'
   ```
   matches the pattern `true`.

   




+  _0.3333333333333333_ / _0.3333333333333333_ : Pass: 
Check that the result of evaluating
   ```
   bracket_match (parse_bracket "^0-9") '0'
   ```
   matches the pattern `false`.

   




+  _0.3333333333333333_ / _0.3333333333333333_ : Pass: 
Check that the result of evaluating
   ```
   try (bracket_match (Char 'a') '0') with Invalid_argument _ -> true | _ -> false
   ```
   matches the pattern `true`.

   




#### Subtotal: _1.0_ / _1.0_

## Random Tests

+ Pass: Check that file "regExpr.ml" exists.

+ Pass: Check that hw2 files compile without errors

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.bracket_match (RegExpr.parse_bracket "6-rf-vo-rd-e") 'v'
        ```
        Matches the result of evaluating
        ```
        true
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.bracket_match (RegExpr.parse_bracket "3-q7-vs-xo-p9-d") '*'
        ```
        Matches the result of evaluating
        ```
        false
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.bracket_match (RegExpr.parse_bracket "a-p0-6") 'a'
        ```
        Matches the result of evaluating
        ```
        true
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.bracket_match (RegExpr.parse_bracket "^1-w9-q2-5e-jq-w") '*'
        ```
        Matches the result of evaluating
        ```
        true
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.bracket_match (RegExpr.parse_bracket "^c-z3-67-vf-k") '7'
        ```
        Matches the result of evaluating
        ```
        false
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.bracket_match (RegExpr.parse_bracket "^m-y9-e0-e4-y") '*'
        ```
        Matches the result of evaluating
        ```
        true
        ```
        

#### Subtotal: _3.0_ / _3.0_

## Manual tests entered by TA: youn1995

+ Pass: Check that file "regExpr.ml" exists.

+  _5_ / _5_ : Pass: 
    
    Useful comments and indentation
    
    
     Score (out of 2):2 
    
    Overall grade for code quality
    
    
     Score (out of 3):3 


+ Pass: Other Stylistic Comments & Feedback

    good job B]

#### Subtotal: _5_ / _5_

