## Assessment for HW2 tokenize_tests

Run on March 02, 11:12:04 AM.

+ Pass: Change into directory "hw2".

## Feedback Tests (total possible value: 1)

+ Pass: Check that file "regExpr.ml" exists.

+ Pass: Check that hw2 files compile without errors

+  _0.14285714285714285_ / _0.14285714285714285_ : Pass: Check that expression `ST` following file regExpr.ml has type `tok`

+  _0.14285714285714285_ / _0.14285714285714285_ : Pass: Check that expression `BR ""` following file regExpr.ml has type `tok`

+  _0.14285714285714285_ / _0.14285714285714285_ : Pass: 
Check that the result of evaluating
   ```
   tokenize ".*" 0
   ```
   matches the pattern `[DOT; ST]`.

   




+  _0.14285714285714285_ / _0.14285714285714285_ : Pass: 
Check that the result of evaluating
   ```
   read_bracket "[abc]d" 1
   ```
   matches the pattern `[BR "abc"; Ch 'd']`.

   




+  _0.14285714285714285_ / _0.14285714285714285_ : Pass: 
Check that the result of evaluating
   ```
   read_bracket "[]]" 1
   ```
   matches the pattern `[BR "]"]`.

   




+  _0.14285714285714285_ / _0.14285714285714285_ : Pass: 
Check that the result of evaluating
   ```
   try (read_bracket "[" 1) with Failure _ -> []
   ```
   matches the pattern `[]`.

   




+  _0.14285714285714285_ / _0.14285714285714285_ : Pass: 
Check that the result of evaluating
   ```
   (tokenize "1701[abcd]" 0)
   ```
   matches the pattern `[Ch '1'; Ch '7'; Ch '0'; Ch '1'; BR "abcd"]`.

   




#### Subtotal: _0.9999999999999998_ / _0.9999999999999998_

## Random Tests

+ Pass: Check that file "regExpr.ml" exists.

+ Pass: Check that hw2 files compile without errors

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.tokenize "[o-u3-z0-v][e-fb-i4-dr-u3-i] \|\(r(\)\|\(\( \(\([^a-d]m\) \)\)|*\)*6 \|\( \| *\) " 0
        ```
        Matches the result of evaluating
        ```
        [RegExpr.BR "o-u3-z0-v"; RegExpr.BR "e-fb-i4-dr-u3-i"; RegExpr.Ch ' '; RegExpr.U; RegExpr.LP; RegExpr.Ch 'r'; RegExpr.Ch '('; RegExpr.RP; RegExpr.U; RegExpr.LP; RegExpr.LP; RegExpr.Ch ' '; RegExpr.LP; RegExpr.LP; RegExpr.BR "^a-d"; RegExpr.Ch 'm'; RegExpr.RP; RegExpr.Ch ' '; RegExpr.RP; RegExpr.RP; RegExpr.Ch '|'; RegExpr.ST; RegExpr.RP; RegExpr.ST; RegExpr.Ch '6'; RegExpr.Ch ' '; RegExpr.U; RegExpr.LP; RegExpr.Ch ' '; RegExpr.U; RegExpr.Ch ' '; RegExpr.ST; RegExpr.RP; RegExpr.Ch ' ']
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.tokenize "r. .  [j-yk-w][^e-z] 5" 0
        ```
        Matches the result of evaluating
        ```
        [RegExpr.Ch 'r'; RegExpr.DOT; RegExpr.Ch ' '; RegExpr.DOT; RegExpr.Ch ' '; RegExpr.Ch ' '; RegExpr.BR "j-yk-w"; RegExpr.BR "^e-z"; RegExpr.Ch ' '; RegExpr.Ch '5']
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.tokenize "]\( .[^b-p5-i]*\).p\|\( \)\( \)[^9-qj-wr-sa-h4-z][6-e][^0-y4]\(  \)\| \|\(^[4-z7-d]\)" 0
        ```
        Matches the result of evaluating
        ```
        [RegExpr.Ch ']'; RegExpr.LP; RegExpr.Ch ' '; RegExpr.DOT; RegExpr.BR "^b-p5-i"; RegExpr.ST; RegExpr.RP; RegExpr.DOT; RegExpr.Ch 'p'; RegExpr.U; RegExpr.LP; RegExpr.Ch ' '; RegExpr.RP; RegExpr.LP; RegExpr.Ch ' '; RegExpr.RP; RegExpr.BR "^9-qj-wr-sa-h4-z"; RegExpr.BR "6-e"; RegExpr.BR "^0-y4"; RegExpr.LP; RegExpr.Ch ' '; RegExpr.Ch ' '; RegExpr.RP; RegExpr.U; RegExpr.Ch ' '; RegExpr.U; RegExpr.LP; RegExpr.Ch '^'; RegExpr.BR "4-z7-d"; RegExpr.RP]
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.tokenize "  *.\( [^b-tk-s7-ii-k]\)[^6-f]\( [^2-uhm-o5-i]. \|  \| \|\(\(  *\)\( \)\)[f-r0-8s-z]\( \( \| \)\)\)  [^8-96-x][0-w]" 0
        ```
        Matches the result of evaluating
        ```
        [RegExpr.Ch ' '; RegExpr.Ch ' '; RegExpr.ST; RegExpr.DOT; RegExpr.LP; RegExpr.Ch ' '; RegExpr.BR "^b-tk-s7-ii-k"; RegExpr.RP; RegExpr.BR "^6-f"; RegExpr.LP; RegExpr.Ch ' '; RegExpr.BR "^2-uhm-o5-i"; RegExpr.DOT; RegExpr.Ch ' '; RegExpr.U; RegExpr.Ch ' '; RegExpr.Ch ' '; RegExpr.U; RegExpr.Ch ' '; RegExpr.U; RegExpr.LP; RegExpr.LP; RegExpr.Ch ' '; RegExpr.Ch ' '; RegExpr.ST; RegExpr.RP; RegExpr.LP; RegExpr.Ch ' '; RegExpr.RP; RegExpr.RP; RegExpr.BR "f-r0-8s-z"; RegExpr.LP; RegExpr.Ch ' '; RegExpr.LP; RegExpr.Ch ' '; RegExpr.U; RegExpr.Ch ' '; RegExpr.RP; RegExpr.RP; RegExpr.RP; RegExpr.Ch ' '; RegExpr.Ch ' '; RegExpr.BR "^8-96-x"; RegExpr.BR "0-w"]
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        RegExpr.tokenize "pb\( \([e-rb-l][^4-r5-bf-y]\)*\)" 0
        ```
        Matches the result of evaluating
        ```
        [RegExpr.Ch 'p'; RegExpr.Ch 'b'; RegExpr.LP; RegExpr.Ch ' '; RegExpr.LP; RegExpr.BR "e-rb-l"; RegExpr.BR "^4-r5-bf-y"; RegExpr.RP; RegExpr.ST; RegExpr.RP]
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        try (RegExpr.tokenize "[^k-4i-98y-i] \\" 0) with Failure _ -> []
        ```
        Matches the result of evaluating
        ```
        []
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        try (RegExpr.tokenize "\)\( \( \| \( \).[m-q0-63-sk-m]\) \)\|[k-mh-yb-n7]\(***. \| \( * \)\\" 0) with Failure _ -> []
        ```
        Matches the result of evaluating
        ```
        []
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        try (RegExpr.tokenize "  \| \|\|\|k\| \|\|\|[v-ul-7c-0t-oz-0][g-aw-ft-1]\\" 0) with Failure _ -> []
        ```
        Matches the result of evaluating
        ```
        []
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        try (RegExpr.tokenize "[^4]\| \|\|\|.   \) \(.s\( \)\|\( \)\|[^4-df-p]icq\| [8-e4-70-z]\|\|\|\\" 0) with Failure _ -> []
        ```
        Matches the result of evaluating
        ```
        []
        ```
        

+  _0.5_ / _0.5_ : Pass: 
        Check that the result of evaluating
        ```
        try (RegExpr.tokenize " ****eu\| \|\|\) \( \\" 0) with Failure _ -> []
        ```
        Matches the result of evaluating
        ```
        []
        ```
        

#### Subtotal: _5.0_ / _5.0_

## Manual tests entered by TA: zhan5262

+ Pass: Check that file "regExpr.ml" exists.

+  _5_ / _5_ : Pass: 
    
    Useful comments and indentation
    
    
     Score (out of 2):2 
    
    Overall grade for code quality
    
    
     Score (out of 3):3 


+ Pass: Other Stylistic Comments & Feedback

    

#### Subtotal: _5_ / _5_

