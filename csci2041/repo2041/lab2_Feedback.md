### Feedback for Lab 2

Run on February 07, 18:24:15 PM.

+ Pass: Change into directory "lab2".

+ Pass: Check that file "lab2_patterns.ml" exists.

+ Pass: Check that an OCaml file "lab2_patterns.ml" has no syntax or type errors.

    OCaml file "lab2_patterns.ml" has no syntax or type errors.



+ Pass: 
Check that the result of evaluating
   ```
   singleton_or_empty_list [1]
   ```
   matches the pattern `true`.

   




+ Pass: 
Check that the result of evaluating
   ```
   singleton_or_empty_list [1;2]
   ```
   matches the pattern `false`.

   




+ Pass: 
Check that the result of evaluating
   ```
   twins (0,1)
   ```
   matches the pattern `false`.

   




+ Pass: 
Check that the result of evaluating
   ```
   twins ("a","a")
   ```
   matches the pattern `true`.

   




+ Pass: Check that file "lab2_recursion.ml" exists.

+ Pass: 
Check that the result of evaluating
   ```
   unzip [("a",100); ("b",99)]
   ```
   matches the pattern `(["a";"b"],[100;99])`.

   




+ Pass: 
Check that the result of evaluating
   ```
   list_cat ["what"; "is"; "this"; "I"; "dont"; "even"]
   ```
   matches the pattern `"whatisthisIdonteven"`.

   




