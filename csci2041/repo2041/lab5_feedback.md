### Feedback for Lab 5

Run on March 03, 22:34:18 PM.

+ Pass: Change into directory "lab5".

+ Pass: Check that an OCaml file "lab5.ml" has no syntax or type errors.

    OCaml file "lab5.ml" has no syntax or type errors.



+ Pass: Make sure you are only using recursion in functions fold, map, reduce

   



+ Pass: 
Check that the result of evaluating
   ```
   append [1;2] [3;4]
   ```
   matches the pattern `[1;2;3;4]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   filter ((=) 2) [1;2;3]
   ```
   matches the pattern `[2]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   list_cat ["a"; "long"; "string"; "list"]
   ```
   matches the pattern `"alongstringlist"`.

   




+ Pass: 
Check that the result of evaluating
   ```
   list_fst [(0,true); (1,false)]
   ```
   matches the pattern `[0;1]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   mem 5 [1;3]
   ```
   matches the pattern `false`.

   




+ Pass: 
Check that the result of evaluating
   ```
   mem 1 [1;3]
   ```
   matches the pattern `true`.

   




+ Pass: 
Check that the result of evaluating
   ```
   count_intersection [1;2;4] [1;2;3]
   ```
   matches the pattern `2`.

   




+ Pass: 
Check that the result of evaluating
   ```
   assoc_max [("a",3);("b",0)]
   ```
   matches the pattern `Some "a"`.

   




+ Pass: 
Check that the result of evaluating
   ```
   assoc_max []
   ```
   matches the pattern `None`.

   




