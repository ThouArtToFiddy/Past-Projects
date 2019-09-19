### Feedback for HW 2

Run on February 22, 00:03:25 AM.

+ Pass: Change into directory "hw2".

+ Pass: Check that file "regExpr.ml" exists.

+ Pass: Check that file "ogrep.ml" exists.

+ Pass: Check that hw2 files compile without errors

+ Pass: Check that expression `ST` following file regExpr.ml has type `tok`

+ Pass: Check that expression `BR ""` following file regExpr.ml has type `tok`

+ Pass: 
Check that the result of evaluating
   ```
   tokenize ".*" 0
   ```
   matches the pattern `[DOT; ST]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   read_bracket "[abc]d" 1
   ```
   matches the pattern `[BR "abc"; Ch 'd']`.

   




+ Pass: 
Check that the result of evaluating
   ```
   read_bracket "[]]" 1
   ```
   matches the pattern `[BR "]"]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   try (read_bracket "[" 1) with Failure _ -> []
   ```
   matches the pattern `[]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   (tokenize "1701[abcd]" 0)
   ```
   matches the pattern `[Ch '1'; Ch '7'; Ch '0'; Ch '1'; BR "abcd"]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   match (parse_bracket "ab") with Bracket _ -> true | _ -> false
   ```
   matches the pattern `true`.

   




+ Pass: 
Check that the result of evaluating
   ```
   try (let _ = (parse_bracket "z-a") in false) with Failure _ -> true
   ```
   matches the pattern `true`.

   




+ Pass: 
Check that the result of evaluating
   ```
   try (let _ = (parse_bracket "z--") in false) with Failure _ -> true
   ```
   matches the pattern `true`.

   




+ Pass: 
Check that the result of evaluating
   ```
   match (parse_bracket "za-") with Bracket _ -> true | _ -> false
   ```
   matches the pattern `true`.

   




+ Pass: 
Check that the result of evaluating
   ```
   match (parse_base_case [BR "za-"]) with (Bracket _, []) -> true | _ -> false
   ```
   matches the pattern `true`.

   




+ Pass: Check that expression `Star Wild` following file regExpr.ml has type `regexp`

+ Pass: 
Check that the result of evaluating
   ```
   parse_starred_base [DOT; ST]
   ```
   matches the pattern `(Star Wild, [])`.

   




+ Pass: 
Check that the result of evaluating
   ```
   parse_starred_base [Ch 'a'; Ch 'b'; Ch 'c']
   ```
   matches the pattern `(Char 'a', [Ch 'b'; Ch 'c'])`.

   




+ Pass: 
Check that the result of evaluating
   ```
   parse_regex [Ch 'a'; ST; Ch 'b']
   ```
   matches the pattern `(Concat (Star (Char 'a'), Char 'b'), [])`.

   




+ Pass: 
Check that the result of evaluating
   ```
   bracket_match (parse_bracket "a-f0-9") 'c'
   ```
   matches the pattern `true`.

   




+ Pass: 
Check that the result of evaluating
   ```
   bracket_match (parse_bracket "^0-9") '0'
   ```
   matches the pattern `false`.

   




+ Pass: 
Check that the result of evaluating
   ```
   try (bracket_match (Char 'a') '0') with Invalid_argument _ -> true | _ -> false
   ```
   matches the pattern `true`.

   




+ Pass: 
Check that the result of evaluating
   ```
   regex_match (Concat (parse_bracket "0-9", parse_bracket "a-z")) "0a"
   ```
   matches the pattern `true`.

   




+ Pass: 
Check that the result of evaluating
   ```
   regex_match (Star (Char 'a')) ""
   ```
   matches the pattern `true`.

   




+ Pass: 
Check that the result of evaluating
   ```
   regex_match (Star (Char 'a')) "aaa"
   ```
   matches the pattern `true`.

   




+ Pass: 
Check that the result of evaluating
   ```
   regex_match (Star (Char 'b')) "a"
   ```
   matches the pattern `false`.

   




