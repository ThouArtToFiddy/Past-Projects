## Assessment for Lab 5

Run on March 01, 10:05:21 AM.

+ Pass: Change into directory "lab5".

+  _2_ / _2_ : Pass: Check that an OCaml file "lab5.ml" has no syntax or type errors.

    OCaml file "lab5.ml" has no syntax or type errors.



+  _2_ / _2_ : Pass: Make sure you are only using recursion in functions fold, map, reduce

   



+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   append [1;2] [3;4]
   ```
   matches the pattern `[1;2;3;4]`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   filter ((=) 2) [1;2;3]
   ```
   matches the pattern `[2]`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   list_cat ["a"; "long"; "string"; "list"]
   ```
   matches the pattern `"alongstringlist"`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   list_fst [(0,true); (1,false)]
   ```
   matches the pattern `[0;1]`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   mem 5 [1;3]
   ```
   matches the pattern `false`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   mem 1 [1;3]
   ```
   matches the pattern `true`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   count_intersection [1;2;4] [1;2;3]
   ```
   matches the pattern `2`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   assoc_max [("a",3);("b",0)]
   ```
   matches the pattern `Some "a"`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   assoc_max []
   ```
   matches the pattern `None`.

   




#### Total score: _13_ / _13_

