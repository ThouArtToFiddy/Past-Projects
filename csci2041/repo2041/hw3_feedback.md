### Feedback for HW 3

Run on March 06, 19:31:36 PM.

+ Pass: Change into directory "hw3".

+ Pass: Check that file "similar.ml" exists.

+ Pass: Check that file "findsim.ml" exists.

+ Pass: Check that hw3 files compile without errors

+ Pass: You are not allowed to use recursion.

   



+ Pass: 
Check that the result of evaluating
   ```
   ngrams 2 "hallo!"
   ```
   matches the pattern `["ha"; "al"; "ll"; "lo"; "o!"]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   ngrams 3 "shirtballs"
   ```
   matches the pattern `["shi"; "hir"; "irt"; "rtb"; "tba"; "bal"; "all"; "lls"]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   filter_chars "abc123"
   ```
   matches the pattern `"abc   "`.

   




+ Pass: 
Check that the result of evaluating
   ```
   filter_chars "SAD!!!!!!!"
   ```
   matches the pattern `"sad       "`.

   




+ Pass: 
Check that the result of evaluating
   ```
   n_grams "I continued to use almond milk in my coffee"
   ```
   matches the pattern `["cont"; "onti"; "ntin"; "tinu"; "inue"; "nued"; "almo"; "lmon"; "mond"; "milk"; "coff"; "offe"; "ffee"]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   n_grams "DRESS BENCH!"
   ```
   matches the pattern `["dres"; "ress"; "benc"; "ench"]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   List.sort compare (bag_of_list ["a"; "b"; "a" ; "b"])
   ```
   matches the pattern `[("a",2); ("b",2)]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   List.sort compare (bag_of_list ["a"; "a"; "b"; "c"; "b"; "a"])
   ```
   matches the pattern `[("a",3); ("b",2); ("c",1)]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   intersection_size [("a",2); ("b",1)] [("a",1); ("c",1)]
   ```
   matches the pattern `1`.

   




+ Pass: 
Check that the result of evaluating
   ```
   union_size [("a",2); ("b",1)] [("a",1); ("c",1)]
   ```
   matches the pattern `4`.

   




+ Pass: 
Check that the result of evaluating
   ```
   similarity [("a",2); ("b",1)] [("a",1); ("c",1)]
   ```
   matches the pattern `0.25`.

   




+ Pass: 
Check that the result of evaluating
   ```
   find_max [0.;0.2;0.1] ["a";"b";"c"]
   ```
   matches the pattern `(0.2, "b")`.

   




