## Assessment for HW2 re_match_tests

Run on February 26, 10:27:15 AM.

+ Pass: Change into directory "hw2".

## Feedback Tests (total possible value: 1)

+ Pass: Check that file "regExpr.ml" exists.

+ Pass: Check that hw2 files compile without errors FAILED with ouput:
File "regExpr.ml", line 29, characters 15-64:
Error: This expression has type 'a list
       but an expression was expected of type int -> string
 FAILED with ouput:
File "regExpr.ml", line 122, characters 101-108:
Error: Unbound value explode
 FAILED with ouput:
File "regExpr.ml", line 60, characters 46-54:
Error: Unbound value revRange


+  _0.25_ / _0.25_ : Pass: 
Check that the result of evaluating
   ```
   regex_match (Concat (parse_bracket "0-9", parse_bracket "a-z")) "0a"
   ```
   matches the pattern `true`.

   




+  _0.25_ / _0.25_ : Pass: 
Check that the result of evaluating
   ```
   regex_match (Star (Char 'a')) ""
   ```
   matches the pattern `true`.

   




+  _0.25_ / _0.25_ : Pass: 
Check that the result of evaluating
   ```
   regex_match (Star (Char 'a')) "aaa"
   ```
   matches the pattern `true`.

   




+  _0.25_ / _0.25_ : Pass: 
Check that the result of evaluating
   ```
   regex_match (Star (Char 'b')) "a"
   ```
   matches the pattern `false`.

   




#### Subtotal: _1.0_ / _1.0_

## Random Tests

+ Pass: Check that file "regExpr.ml" exists.

+ Pass: Check that hw2 files compile without errors FAILED with ouput:
File "regExpr.ml", line 29, characters 15-64:
Error: This expression has type 'a list
       but an expression was expected of type int -> string
 FAILED with ouput:
File "regExpr.ml", line 122, characters 101-108:
Error: Unbound value explode
 FAILED with ouput:
File "regExpr.ml", line 60, characters 46-54:
Error: Unbound value revRange


+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.regex_match (RegExpr.Concat (RegExpr.Wild, RegExpr.Star (RegExpr.Char 'a'))) "ca"
        ```
        Matches the result of evaluating
        ```
        true
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.regex_match (RegExpr.Concat (RegExpr.Union (RegExpr.Char 'a', RegExpr.Union (RegExpr.Char 'b', RegExpr.Char 'b')), RegExpr.Char 'a')) "aa"
        ```
        Matches the result of evaluating
        ```
        true
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.regex_match (RegExpr.Union (RegExpr.Char 'b', RegExpr.Star (RegExpr.Concat (RegExpr.Char 'b', RegExpr.Char 'b')))) ""
        ```
        Matches the result of evaluating
        ```
        true
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.regex_match (RegExpr.Union (RegExpr.Concat (RegExpr.Star (RegExpr.Char 'a'), RegExpr.Char 'b'), RegExpr.Union (RegExpr.Concat (RegExpr.Char 'a', RegExpr.Char 'a'), RegExpr.Union (RegExpr.Char 'a', RegExpr.Char 'a')))) "a"
        ```
        Matches the result of evaluating
        ```
        true
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.regex_match (RegExpr.Union (RegExpr.Wild, RegExpr.Wild)) "c"
        ```
        Matches the result of evaluating
        ```
        true
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.regex_match (RegExpr.Concat (RegExpr.Star (RegExpr.Union (RegExpr.Char 'b', RegExpr.Char 'a')), RegExpr.Wild)) "bc"
        ```
        Matches the result of evaluating
        ```
        true
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.regex_match (RegExpr.Union (RegExpr.Union (RegExpr.Concat (RegExpr.Char 'a', RegExpr.Char 'a'), RegExpr.Star (RegExpr.Char 'a')), RegExpr.Wild)) "a"
        ```
        Matches the result of evaluating
        ```
        true
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.regex_match (RegExpr.Star RegExpr.Wild) "cc"
        ```
        Matches the result of evaluating
        ```
        true
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.regex_match (RegExpr.Concat (RegExpr.Wild, RegExpr.Wild)) "cc"
        ```
        Matches the result of evaluating
        ```
        true
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.regex_match (RegExpr.Union (RegExpr.Union (RegExpr.Star (RegExpr.Char 'b'), RegExpr.Star (RegExpr.Char 'b')), RegExpr.Union (RegExpr.Star (RegExpr.Char 'a'), RegExpr.Concat (RegExpr.Char 'a', RegExpr.Char 'a')))) "bb"
        ```
        Matches the result of evaluating
        ```
        true
        ```
        

#### Subtotal: _5.0_ / _5.0_

## Manual tests entered by TA: seife178

+ Pass: Check that file "regExpr.ml" exists.

+  _5_ / _5_ : Pass: 
    
    Useful comments and indentation
    
    
     Score (out of 2):2 
    
    Overall grade for code quality
    
    
     Score (out of 3):3 


+ Pass: Other Stylistic Comments & Feedback

    Looks great!

#### Subtotal: _5_ / _5_

