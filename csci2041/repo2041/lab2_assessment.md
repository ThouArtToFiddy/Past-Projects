## Assessment for Lab 2

Run on February 08, 10:39:21 AM.

+ Pass: Change into directory "lab2".

+  _6_ / _6_ : Pass: Check that an OCaml file "lab2_patterns.ml" has no syntax or type errors.

    OCaml file "lab2_patterns.ml" has no syntax or type errors.



+  _2_ / _2_ : Pass: 
Check that the result of evaluating
   ```
   singleton_or_empty_list [1]
   ```
   matches the pattern `true`.

   




+  _2_ / _2_ : Pass: 
Check that the result of evaluating
   ```
   singleton_or_empty_list [1;2]
   ```
   matches the pattern `false`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   twins (0,1)
   ```
   matches the pattern `false`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   twins ("a","a")
   ```
   matches the pattern `true`.

   




+  _3_ / _3_ : Pass: 
Check that the result of evaluating
   ```
   unzip [("a",100); ("b",99)]
   ```
   matches the pattern `(["a";"b"],[100;99])`.

   




+  _3_ / _3_ : Pass: 
Check that the result of evaluating
   ```
   list_cat ["what"; "is"; "this"; "I"; "dont"; "even"]
   ```
   matches the pattern `"whatisthisIdonteven"`.

   




#### Total score: _18_ / _18_

