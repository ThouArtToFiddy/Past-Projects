## Assessment for HW2 parse_starred_base_tests

Run on February 26, 17:26:16 PM.

+ Pass: Change into directory "hw2".

## Feedback Tests (total possible value: 1)

+ Pass: Check that file "regExpr.ml" exists.

+ Pass: Check that hw2 files compile without errors

+  _0.25_ / _0.25_ : Pass: Check that expression `Star Wild` following file regExpr.ml has type `regexp`

+  _0.25_ / _0.25_ : Pass: 
Check that the result of evaluating
   ```
   parse_starred_base [DOT; ST]
   ```
   matches the pattern `(Star Wild, [])`.

   




+  _0.25_ / _0.25_ : Pass: 
Check that the result of evaluating
   ```
   parse_starred_base [Ch 'a'; Ch 'b'; Ch 'c']
   ```
   matches the pattern `(Char 'a', [Ch 'b'; Ch 'c'])`.

   




+  _0.25_ / _0.25_ : Pass: 
Check that the result of evaluating
   ```
   parse_regex [Ch 'a'; ST; Ch 'b']
   ```
   matches the pattern `(Concat (Star (Char 'a'), Char 'b'), [])`.

   




#### Subtotal: _1.0_ / _1.0_

## Random Tests

+ Pass: Check that file "regExpr.ml" exists.

+ Pass: Check that hw2 files compile without errors

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.parse_regex [RegExpr.LP; RegExpr.LP; RegExpr.DOT; RegExpr.RP; RegExpr.LP; RegExpr.Ch 'b'; RegExpr.RP; RegExpr.RP]
        ```
        Matches the result of evaluating
        ```
        (RegExpr.Concat (RegExpr.Wild, RegExpr.Char 'b'), [])
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.parse_regex [RegExpr.LP; RegExpr.LP; RegExpr.Ch 'b'; RegExpr.RP; RegExpr.U; RegExpr.LP; RegExpr.Ch 'a'; RegExpr.RP; RegExpr.RP]
        ```
        Matches the result of evaluating
        ```
        (RegExpr.Union (RegExpr.Char 'b', RegExpr.Char 'a'), [])
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.parse_regex [RegExpr.LP; RegExpr.LP; RegExpr.LP; RegExpr.LP; RegExpr.Ch 'a'; RegExpr.RP; RegExpr.U; RegExpr.LP; RegExpr.Ch 'b'; RegExpr.RP; RegExpr.RP; RegExpr.LP; RegExpr.LP; RegExpr.Ch 'b'; RegExpr.RP; RegExpr.LP; RegExpr.Ch 'a'; RegExpr.RP; RegExpr.RP; RegExpr.RP; RegExpr.U; RegExpr.LP; RegExpr.Ch 'b'; RegExpr.RP; RegExpr.RP]
        ```
        Matches the result of evaluating
        ```
        (RegExpr.Union (RegExpr.Concat (RegExpr.Union (RegExpr.Char 'a', RegExpr.Char 'b'), RegExpr.Concat (RegExpr.Char 'b', RegExpr.Char 'a')), RegExpr.Char 'b'), [])
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.parse_regex [RegExpr.LP; RegExpr.LP; RegExpr.Ch 'b'; RegExpr.RP; RegExpr.LP; RegExpr.LP; RegExpr.LP; RegExpr.Ch 'b'; RegExpr.RP; RegExpr.U; RegExpr.LP; RegExpr.Ch 'b'; RegExpr.RP; RegExpr.RP; RegExpr.RP; RegExpr.ST; RegExpr.RP]
        ```
        Matches the result of evaluating
        ```
        (RegExpr.Concat (RegExpr.Char 'b', RegExpr.Star (RegExpr.Union (RegExpr.Char 'b', RegExpr.Char 'b'))), [])
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.parse_regex [RegExpr.LP; RegExpr.LP; RegExpr.LP; RegExpr.LP; RegExpr.Ch 'a'; RegExpr.RP; RegExpr.U; RegExpr.LP; RegExpr.Ch 'b'; RegExpr.RP; RegExpr.RP; RegExpr.RP; RegExpr.ST; RegExpr.RP; RegExpr.ST]
        ```
        Matches the result of evaluating
        ```
        (RegExpr.Star (RegExpr.Star (RegExpr.Union (RegExpr.Char 'a', RegExpr.Char 'b'))), [])
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.parse_regex [RegExpr.LP; RegExpr.LP; RegExpr.DOT; RegExpr.RP; RegExpr.U; RegExpr.LP; RegExpr.LP; RegExpr.LP; RegExpr.Ch 'b'; RegExpr.RP; RegExpr.RP; RegExpr.ST; RegExpr.LP; RegExpr.DOT; RegExpr.RP; RegExpr.RP; RegExpr.RP]
        ```
        Matches the result of evaluating
        ```
        (RegExpr.Union (RegExpr.Wild, RegExpr.Concat (RegExpr.Star (RegExpr.Char 'b'), RegExpr.Wild)), [])
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.parse_regex [RegExpr.LP; RegExpr.LP; RegExpr.DOT; RegExpr.RP; RegExpr.U; RegExpr.LP; RegExpr.LP; RegExpr.Ch 'b'; RegExpr.RP; RegExpr.RP; RegExpr.ST; RegExpr.RP]
        ```
        Matches the result of evaluating
        ```
        (RegExpr.Union (RegExpr.Wild, RegExpr.Star (RegExpr.Char 'b')), [])
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.parse_regex [RegExpr.LP; RegExpr.LP; RegExpr.DOT; RegExpr.RP; RegExpr.LP; RegExpr.LP; RegExpr.LP; RegExpr.Ch 'a'; RegExpr.RP; RegExpr.RP; RegExpr.ST; RegExpr.LP; RegExpr.LP; RegExpr.Ch 'b'; RegExpr.RP; RegExpr.RP; RegExpr.ST; RegExpr.RP; RegExpr.RP]
        ```
        Matches the result of evaluating
        ```
        (RegExpr.Concat (RegExpr.Wild, RegExpr.Concat (RegExpr.Star (RegExpr.Char 'a'), RegExpr.Star (RegExpr.Char 'b'))), [])
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.parse_regex [RegExpr.LP; RegExpr.LP; RegExpr.LP; RegExpr.DOT; RegExpr.RP; RegExpr.U; RegExpr.LP; RegExpr.LP; RegExpr.Ch 'b'; RegExpr.RP; RegExpr.RP; RegExpr.ST; RegExpr.RP; RegExpr.LP; RegExpr.LP; RegExpr.DOT; RegExpr.RP; RegExpr.U; RegExpr.LP; RegExpr.LP; RegExpr.Ch 'b'; RegExpr.RP; RegExpr.RP; RegExpr.ST; RegExpr.RP; RegExpr.RP]
        ```
        Matches the result of evaluating
        ```
        (RegExpr.Concat (RegExpr.Union (RegExpr.Wild, RegExpr.Star (RegExpr.Char 'b')), RegExpr.Union (RegExpr.Wild, RegExpr.Star (RegExpr.Char 'b'))), [])
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.parse_regex [RegExpr.LP; RegExpr.LP; RegExpr.LP; RegExpr.LP; RegExpr.Ch 'b'; RegExpr.RP; RegExpr.LP; RegExpr.Ch 'a'; RegExpr.RP; RegExpr.RP; RegExpr.RP; RegExpr.ST; RegExpr.RP; RegExpr.ST]
        ```
        Matches the result of evaluating
        ```
        (RegExpr.Star (RegExpr.Star (RegExpr.Concat (RegExpr.Char 'b', RegExpr.Char 'a'))), [])
        ```
        

#### Subtotal: _5.0_ / _5.0_

## Manual tests entered by TA: yuanx254

+ Pass: Check that file "regExpr.ml" exists.

+  _5_ / _5_ : Pass: 
    
    Useful comments and indentation
    
    
     Score (out of 2): 2
    
    Overall grade for code quality
    
    
     Score (out of 3): 3


+ Pass: Other Stylistic Comments & Feedback

    Great job!

#### Subtotal: _5_ / _5_

