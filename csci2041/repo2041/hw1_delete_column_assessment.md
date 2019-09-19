## Assessment for HW1 delete_column

Run on February 18, 21:26:44 PM.

+ Pass: Change into directory "hw1".

## Feedback Tests (total possible value: 3)

+ Pass: Check that file "tables.ml" exists.

+ Pass: Check that file "slicendice.ml" exists.

+ Pass: Check that hw1 files compile without errors FAILED with ouput:
File "slicendice.ml", line 5, characters 8-19:
Error: Unbound value Tables.main
 FAILED with ouput:
File "tables.ml", line 4, characters 0-1:
Error: Syntax error
 FAILED with ouput:
File "tables.ml", line 26, characters 52-55:
Error: This expression has type string list
       but an expression was expected of type string
 FAILED with ouput:
File "tables.ml", line 72, characters 18-25:
Error: Unbound value get_row
 FAILED with ouput:
File "tables.ml", line 2, characters 21-25:
Error: Unbound constructor Minh


+  _1.5_ / _1.5_ : Pass: 
Check that the result of evaluating
   ```
   List.sort compare (delete_column 2 [(1,1,"a"); (1,2,"b"); (1,3,"c"); (2,1,"X"); (2,2,"Y"); (2,3,"Z")])
   ```
   matches the pattern `List.sort compare [(1,1,"a"); (1,2,"c"); (2,1,"X"); (2,2,"Z")]`.

   




+  _1.5_ / _1.5_ : Pass: 
Check that the result of evaluating
   ```
   delete_column 2 [(1,1,"a")]
   ```
   matches the pattern `[(1,1,"a")]`.

   




#### Subtotal: _3.0_ / _3.0_

## Random Tests

+ Pass: Check that file "tables.ml" exists.

+ Pass: Check that file "slicendice.ml" exists.

+ Pass: Check that hw1 files compile without errors FAILED with ouput:
File "slicendice.ml", line 5, characters 8-19:
Error: Unbound value Tables.main
 FAILED with ouput:
File "tables.ml", line 4, characters 0-1:
Error: Syntax error
 FAILED with ouput:
File "tables.ml", line 26, characters 52-55:
Error: This expression has type string list
       but an expression was expected of type string
 FAILED with ouput:
File "tables.ml", line 72, characters 18-25:
Error: Unbound value get_row
 FAILED with ouput:
File "tables.ml", line 2, characters 21-25:
Error: Unbound constructor Minh


+  _0_ / _0.08_ : Fail: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (-1) [(1,1,"aam"); (1,2,"aas"); (1,3,"abd"); (1,4,"abg"); (1,5,"aaz"); (1,6,"aa7"); (1,7,"abn"); (2,1,"aak"); (2,2,"abu"); (2,3,"aa3"); (2,4,"abf"); (2,5,"aag"); (2,6,"abo"); (2,7,"abo"); (3,1,"ab4"); (3,2,"abm"); (3,3,"aal"); (3,4,"aba"); (3,5,"aaj"); (3,6,"abr"); (3,7,"aah"); (4,1,"abn"); (4,2,"aab"); (4,3,"aas"); (4,4,"aap"); (4,5,"aaj"); (4,6,"abw"); (4,7,"aag"); (5,1,"aaf"); (5,2,"abz"); (5,3,"abd"); (5,4,"abj"); (5,5,"aa7"); (5,6,"aak"); (5,7,"abu"); (6,1,"abk"); (6,2,"aap"); (6,3,"abw"); (6,4,"aar"); (6,5,"abd"); (6,6,"abb"); (6,7,"aac"); (7,1,"abq"); (7,2,"aa3"); (7,3,"aae"); (7,4,"ab5"); (7,5,"aav"); (7,6,"abt"); (7,7,"aag"); (8,1,"aay"); (8,2,"aaf"); (8,3,"abv"); (8,4,"aap"); (8,5,"ab6"); (8,6,"abr"); (8,7,"aa4"); (9,1,"abi"); (9,2,"aas"); (9,3,"aaf"); (9,4,"abk"); (9,5,"abl"); (9,6,"aad"); (9,7,"abe")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aam"); (1,2,"aas"); (1,3,"abd"); (1,4,"abg"); (1,5,"aaz"); (1,6,"aa7"); (1,7,"abn"); (2,1,"aak"); (2,2,"abu"); (2,3,"aa3"); (2,4,"abf"); (2,5,"aag"); (2,6,"abo"); (2,7,"abo"); (3,1,"ab4"); (3,2,"abm"); (3,3,"aal"); (3,4,"aba"); (3,5,"aaj"); (3,6,"abr"); (3,7,"aah"); (4,1,"abn"); (4,2,"aab"); (4,3,"aas"); (4,4,"aap"); (4,5,"aaj"); (4,6,"abw"); (4,7,"aag"); (5,1,"aaf"); (5,2,"abz"); (5,3,"abd"); (5,4,"abj"); (5,5,"aa7"); (5,6,"aak"); (5,7,"abu"); (6,1,"abk"); (6,2,"aap"); (6,3,"abw"); (6,4,"aar"); (6,5,"abd"); (6,6,"abb"); (6,7,"aac"); (7,1,"abq"); (7,2,"aa3"); (7,3,"aae"); (7,4,"ab5"); (7,5,"aav"); (7,6,"abt"); (7,7,"aag"); (8,1,"aay"); (8,2,"aaf"); (8,3,"abv"); (8,4,"aap"); (8,5,"ab6"); (8,6,"abr"); (8,7,"aa4"); (9,1,"abi"); (9,2,"aas"); (9,3,"aaf"); (9,4,"abk"); (9,5,"abl"); (9,6,"aad"); (9,7,"abe")]
        ```
        

FAILED with output:

```      val expected : (int * int * string) list =

  [(1, 1, "aam"); (1, 2, "aas"); (1, 3, "abd"); (1, 4, "abg"); (1, 5, "aaz");

   (1, 6, "aa7"); (1, 7, "abn"); (2, 1, "aak"); (2, 2, "abu"); (2, 3, "aa3");

   (2, 4, "abf"); (2, 5, "aag"); (2, 6, "abo"); (2, 7, "abo"); (3, 1, "ab4");

   (3, 2, "abm"); (3, 3, "aal"); (3, 4, "aba"); (3, 5, "aaj"); (3, 6, "abr");

   (3, 7, "aah"); (4, 1, "abn"); (4, 2, "aab"); (4, 3, "aas"); (4, 4, "aap");

   (4, 5, "aaj"); (4, 6, "abw"); (4, 7, "aag"); (5, 1, "aaf"); (5, 2, "abz");

   (5, 3, "abd"); (5, 4, "abj"); (5, 5, "aa7"); (5, 6, "aak"); (5, 7, "abu");

   (6, 1, "abk"); (6, 2, "aap"); (6, 3, "abw"); (6, 4, "aar"); (6, 5, "abd");

   (6, 6, "abb"); (6, 7, "aac"); (7, 1, "abq"); (7, 2, "aa3"); (7, 3, "aae");

   (7, 4, "ab5"); (7, 5, "aav"); (7, 6, "abt"); (7, 7, "aag"); (8, 1, "aay");

   (8, 2, "aaf"); (8, 3, "abv"); (8, 4, "aap"); (8, 5, "ab6"); (8, 6, "abr");

   (8, 7, "aa4"); (9, 1, "abi"); (9, 2, "aas"); (9, 3, "aaf"); (9, 4, "abk");

   (9, 5, "abl"); (9, 6, "aad"); (9, 7, "abe")]

   val result : (int * int * string) list =

  [(1, 0, "aam"); (1, 1, "aas"); (1, 2, "abd"); (1, 3, "abg"); (1, 4, "aaz");

   (1, 5, "aa7"); (1, 6, "abn"); (2, 0, "aak"); (2, 1, "abu"); (2, 2, "aa3");

   (2, 3, "abf"); (2, 4, "aag"); (2, 5, "abo"); (2, 6, "abo"); (3, 0, "ab4");

   (3, 1, "abm"); (3, 2, "aal"); (3, 3, "aba"); (3, 4, "aaj"); (3, 5, "abr");

   (3, 6, "aah"); (4, 0, "abn"); (4, 1, "aab"); (4, 2, "aas"); (4, 3, "aap");

   (4, 4, "aaj"); (4, 5, "abw"); (4, 6, "aag"); (5, 0, "aaf"); (5, 1, "abz");

   (5, 2, "abd"); (5, 3, "abj"); (5, 4, "aa7"); (5, 5, "aak"); (5, 6, "abu");

   (6, 0, "abk"); (6, 1, "aap"); (6, 2, "abw"); (6, 3, "aar"); (6, 4, "abd");

   (6, 5, "abb"); (6, 6, "aac"); (7, 0, "abq"); (7, 1, "aa3"); (7, 2, "aae");

   (7, 3, "ab5"); (7, 4, "aav"); (7, 5, "abt"); (7, 6, "aag"); (8, 0, "aay");

   (8, 1, "aaf"); (8, 2, "abv"); (8, 3, "aap"); (8, 4, "ab6"); (8, 5, "abr");

   (8, 6, "aa4"); (9, 0, "abi"); (9, 1, "aas"); (9, 2, "aaf"); (9, 3, "abk");

   (9, 4, "abl"); (9, 5, "aad"); (9, 6, "abe")]

```

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (6) [(1,1,"aam"); (1,2,"aas"); (1,3,"abd"); (1,4,"abg"); (1,5,"aaz"); (1,6,"aa7"); (1,7,"abn"); (2,1,"aak"); (2,2,"abu"); (2,3,"aa3"); (2,4,"abf"); (2,5,"aag"); (2,6,"abo"); (2,7,"abo"); (3,1,"ab4"); (3,2,"abm"); (3,3,"aal"); (3,4,"aba"); (3,5,"aaj"); (3,6,"abr"); (3,7,"aah"); (4,1,"abn"); (4,2,"aab"); (4,3,"aas"); (4,4,"aap"); (4,5,"aaj"); (4,6,"abw"); (4,7,"aag"); (5,1,"aaf"); (5,2,"abz"); (5,3,"abd"); (5,4,"abj"); (5,5,"aa7"); (5,6,"aak"); (5,7,"abu"); (6,1,"abk"); (6,2,"aap"); (6,3,"abw"); (6,4,"aar"); (6,5,"abd"); (6,6,"abb"); (6,7,"aac"); (7,1,"abq"); (7,2,"aa3"); (7,3,"aae"); (7,4,"ab5"); (7,5,"aav"); (7,6,"abt"); (7,7,"aag"); (8,1,"aay"); (8,2,"aaf"); (8,3,"abv"); (8,4,"aap"); (8,5,"ab6"); (8,6,"abr"); (8,7,"aa4"); (9,1,"abi"); (9,2,"aas"); (9,3,"aaf"); (9,4,"abk"); (9,5,"abl"); (9,6,"aad"); (9,7,"abe")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aam"); (1,2,"aas"); (1,3,"abd"); (1,4,"abg"); (1,5,"aaz"); (1,6,"abn"); (2,1,"aak"); (2,2,"abu"); (2,3,"aa3"); (2,4,"abf"); (2,5,"aag"); (2,6,"abo"); (3,1,"ab4"); (3,2,"abm"); (3,3,"aal"); (3,4,"aba"); (3,5,"aaj"); (3,6,"aah"); (4,1,"abn"); (4,2,"aab"); (4,3,"aas"); (4,4,"aap"); (4,5,"aaj"); (4,6,"aag"); (5,1,"aaf"); (5,2,"abz"); (5,3,"abd"); (5,4,"abj"); (5,5,"aa7"); (5,6,"abu"); (6,1,"abk"); (6,2,"aap"); (6,3,"abw"); (6,4,"aar"); (6,5,"abd"); (6,6,"aac"); (7,1,"abq"); (7,2,"aa3"); (7,3,"aae"); (7,4,"ab5"); (7,5,"aav"); (7,6,"aag"); (8,1,"aay"); (8,2,"aaf"); (8,3,"abv"); (8,4,"aap"); (8,5,"ab6"); (8,6,"aa4"); (9,1,"abi"); (9,2,"aas"); (9,3,"aaf"); (9,4,"abk"); (9,5,"abl"); (9,6,"abe")]
        ```
        

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (2) [(1,1,"aam"); (1,2,"aas"); (1,3,"abd"); (1,4,"abg"); (1,5,"aaz"); (1,6,"aa7"); (1,7,"abn"); (2,1,"aak"); (2,2,"abu"); (2,3,"aa3"); (2,4,"abf"); (2,5,"aag"); (2,6,"abo"); (2,7,"abo"); (3,1,"ab4"); (3,2,"abm"); (3,3,"aal"); (3,4,"aba"); (3,5,"aaj"); (3,6,"abr"); (3,7,"aah"); (4,1,"abn"); (4,2,"aab"); (4,3,"aas"); (4,4,"aap"); (4,5,"aaj"); (4,6,"abw"); (4,7,"aag"); (5,1,"aaf"); (5,2,"abz"); (5,3,"abd"); (5,4,"abj"); (5,5,"aa7"); (5,6,"aak"); (5,7,"abu"); (6,1,"abk"); (6,2,"aap"); (6,3,"abw"); (6,4,"aar"); (6,5,"abd"); (6,6,"abb"); (6,7,"aac"); (7,1,"abq"); (7,2,"aa3"); (7,3,"aae"); (7,4,"ab5"); (7,5,"aav"); (7,6,"abt"); (7,7,"aag"); (8,1,"aay"); (8,2,"aaf"); (8,3,"abv"); (8,4,"aap"); (8,5,"ab6"); (8,6,"abr"); (8,7,"aa4"); (9,1,"abi"); (9,2,"aas"); (9,3,"aaf"); (9,4,"abk"); (9,5,"abl"); (9,6,"aad"); (9,7,"abe")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aam"); (1,2,"abd"); (1,3,"abg"); (1,4,"aaz"); (1,5,"aa7"); (1,6,"abn"); (2,1,"aak"); (2,2,"aa3"); (2,3,"abf"); (2,4,"aag"); (2,5,"abo"); (2,6,"abo"); (3,1,"ab4"); (3,2,"aal"); (3,3,"aba"); (3,4,"aaj"); (3,5,"abr"); (3,6,"aah"); (4,1,"abn"); (4,2,"aas"); (4,3,"aap"); (4,4,"aaj"); (4,5,"abw"); (4,6,"aag"); (5,1,"aaf"); (5,2,"abd"); (5,3,"abj"); (5,4,"aa7"); (5,5,"aak"); (5,6,"abu"); (6,1,"abk"); (6,2,"abw"); (6,3,"aar"); (6,4,"abd"); (6,5,"abb"); (6,6,"aac"); (7,1,"abq"); (7,2,"aae"); (7,3,"ab5"); (7,4,"aav"); (7,5,"abt"); (7,6,"aag"); (8,1,"aay"); (8,2,"abv"); (8,3,"aap"); (8,4,"ab6"); (8,5,"abr"); (8,6,"aa4"); (9,1,"abi"); (9,2,"aaf"); (9,3,"abk"); (9,4,"abl"); (9,5,"aad"); (9,6,"abe")]
        ```
        

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (6) [(1,1,"aam"); (1,2,"aas"); (1,3,"abd"); (1,4,"abg"); (1,5,"aaz"); (1,6,"aa7"); (1,7,"abn"); (2,1,"aak"); (2,2,"abu"); (2,3,"aa3"); (2,4,"abf"); (2,5,"aag"); (2,6,"abo"); (2,7,"abo"); (3,1,"ab4"); (3,2,"abm"); (3,3,"aal"); (3,4,"aba"); (3,5,"aaj"); (3,6,"abr"); (3,7,"aah"); (4,1,"abn"); (4,2,"aab"); (4,3,"aas"); (4,4,"aap"); (4,5,"aaj"); (4,6,"abw"); (4,7,"aag"); (5,1,"aaf"); (5,2,"abz"); (5,3,"abd"); (5,4,"abj"); (5,5,"aa7"); (5,6,"aak"); (5,7,"abu"); (6,1,"abk"); (6,2,"aap"); (6,3,"abw"); (6,4,"aar"); (6,5,"abd"); (6,6,"abb"); (6,7,"aac"); (7,1,"abq"); (7,2,"aa3"); (7,3,"aae"); (7,4,"ab5"); (7,5,"aav"); (7,6,"abt"); (7,7,"aag"); (8,1,"aay"); (8,2,"aaf"); (8,3,"abv"); (8,4,"aap"); (8,5,"ab6"); (8,6,"abr"); (8,7,"aa4"); (9,1,"abi"); (9,2,"aas"); (9,3,"aaf"); (9,4,"abk"); (9,5,"abl"); (9,6,"aad"); (9,7,"abe")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aam"); (1,2,"aas"); (1,3,"abd"); (1,4,"abg"); (1,5,"aaz"); (1,6,"abn"); (2,1,"aak"); (2,2,"abu"); (2,3,"aa3"); (2,4,"abf"); (2,5,"aag"); (2,6,"abo"); (3,1,"ab4"); (3,2,"abm"); (3,3,"aal"); (3,4,"aba"); (3,5,"aaj"); (3,6,"aah"); (4,1,"abn"); (4,2,"aab"); (4,3,"aas"); (4,4,"aap"); (4,5,"aaj"); (4,6,"aag"); (5,1,"aaf"); (5,2,"abz"); (5,3,"abd"); (5,4,"abj"); (5,5,"aa7"); (5,6,"abu"); (6,1,"abk"); (6,2,"aap"); (6,3,"abw"); (6,4,"aar"); (6,5,"abd"); (6,6,"aac"); (7,1,"abq"); (7,2,"aa3"); (7,3,"aae"); (7,4,"ab5"); (7,5,"aav"); (7,6,"aag"); (8,1,"aay"); (8,2,"aaf"); (8,3,"abv"); (8,4,"aap"); (8,5,"ab6"); (8,6,"aa4"); (9,1,"abi"); (9,2,"aas"); (9,3,"aaf"); (9,4,"abk"); (9,5,"abl"); (9,6,"abe")]
        ```
        

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (2) [(1,1,"aam"); (1,2,"aas"); (1,3,"abd"); (1,4,"abg"); (1,5,"aaz"); (1,6,"aa7"); (1,7,"abn"); (2,1,"aak"); (2,2,"abu"); (2,3,"aa3"); (2,4,"abf"); (2,5,"aag"); (2,6,"abo"); (2,7,"abo"); (3,1,"ab4"); (3,2,"abm"); (3,3,"aal"); (3,4,"aba"); (3,5,"aaj"); (3,6,"abr"); (3,7,"aah"); (4,1,"abn"); (4,2,"aab"); (4,3,"aas"); (4,4,"aap"); (4,5,"aaj"); (4,6,"abw"); (4,7,"aag"); (5,1,"aaf"); (5,2,"abz"); (5,3,"abd"); (5,4,"abj"); (5,5,"aa7"); (5,6,"aak"); (5,7,"abu"); (6,1,"abk"); (6,2,"aap"); (6,3,"abw"); (6,4,"aar"); (6,5,"abd"); (6,6,"abb"); (6,7,"aac"); (7,1,"abq"); (7,2,"aa3"); (7,3,"aae"); (7,4,"ab5"); (7,5,"aav"); (7,6,"abt"); (7,7,"aag"); (8,1,"aay"); (8,2,"aaf"); (8,3,"abv"); (8,4,"aap"); (8,5,"ab6"); (8,6,"abr"); (8,7,"aa4"); (9,1,"abi"); (9,2,"aas"); (9,3,"aaf"); (9,4,"abk"); (9,5,"abl"); (9,6,"aad"); (9,7,"abe")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aam"); (1,2,"abd"); (1,3,"abg"); (1,4,"aaz"); (1,5,"aa7"); (1,6,"abn"); (2,1,"aak"); (2,2,"aa3"); (2,3,"abf"); (2,4,"aag"); (2,5,"abo"); (2,6,"abo"); (3,1,"ab4"); (3,2,"aal"); (3,3,"aba"); (3,4,"aaj"); (3,5,"abr"); (3,6,"aah"); (4,1,"abn"); (4,2,"aas"); (4,3,"aap"); (4,4,"aaj"); (4,5,"abw"); (4,6,"aag"); (5,1,"aaf"); (5,2,"abd"); (5,3,"abj"); (5,4,"aa7"); (5,5,"aak"); (5,6,"abu"); (6,1,"abk"); (6,2,"abw"); (6,3,"aar"); (6,4,"abd"); (6,5,"abb"); (6,6,"aac"); (7,1,"abq"); (7,2,"aae"); (7,3,"ab5"); (7,4,"aav"); (7,5,"abt"); (7,6,"aag"); (8,1,"aay"); (8,2,"abv"); (8,3,"aap"); (8,4,"ab6"); (8,5,"abr"); (8,6,"aa4"); (9,1,"abi"); (9,2,"aaf"); (9,3,"abk"); (9,4,"abl"); (9,5,"aad"); (9,6,"abe")]
        ```
        

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (5) [(1,1,"abo"); (1,2,"aaa"); (1,3,"aby"); (1,4,"aau"); (1,5,"aae"); (2,1,"abx"); (2,2,"aat"); (2,3,"aby"); (2,4,"ab7"); (2,5,"abe"); (3,1,"abo"); (3,2,"aah"); (3,3,"aab"); (3,4,"abe"); (3,5,"aag"); (4,1,"aaz"); (4,2,"abt"); (4,3,"aam"); (4,4,"aar"); (4,5,"abs"); (5,1,"aar"); (5,2,"aau"); (5,3,"abt"); (5,4,"abs"); (5,5,"ab4"); (6,1,"abh"); (6,2,"aax"); (6,3,"aan"); (6,4,"aaw"); (6,5,"ab4"); (7,1,"abs"); (7,2,"aby"); (7,3,"abo"); (7,4,"abv"); (7,5,"aao"); (8,1,"aa4"); (8,2,"aba"); (8,3,"aai"); (8,4,"aa5"); (8,5,"aah"); (9,1,"ab6"); (9,2,"abb"); (9,3,"abi"); (9,4,"aau"); (9,5,"aa5"); (10,1,"abg"); (10,2,"aai"); (10,3,"aam"); (10,4,"aav"); (10,5,"aau")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abo"); (1,2,"aaa"); (1,3,"aby"); (1,4,"aau"); (2,1,"abx"); (2,2,"aat"); (2,3,"aby"); (2,4,"ab7"); (3,1,"abo"); (3,2,"aah"); (3,3,"aab"); (3,4,"abe"); (4,1,"aaz"); (4,2,"abt"); (4,3,"aam"); (4,4,"aar"); (5,1,"aar"); (5,2,"aau"); (5,3,"abt"); (5,4,"abs"); (6,1,"abh"); (6,2,"aax"); (6,3,"aan"); (6,4,"aaw"); (7,1,"abs"); (7,2,"aby"); (7,3,"abo"); (7,4,"abv"); (8,1,"aa4"); (8,2,"aba"); (8,3,"aai"); (8,4,"aa5"); (9,1,"ab6"); (9,2,"abb"); (9,3,"abi"); (9,4,"aau"); (10,1,"abg"); (10,2,"aai"); (10,3,"aam"); (10,4,"aav")]
        ```
        

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (3) [(1,1,"abo"); (1,2,"aaa"); (1,3,"aby"); (1,4,"aau"); (1,5,"aae"); (2,1,"abx"); (2,2,"aat"); (2,3,"aby"); (2,4,"ab7"); (2,5,"abe"); (3,1,"abo"); (3,2,"aah"); (3,3,"aab"); (3,4,"abe"); (3,5,"aag"); (4,1,"aaz"); (4,2,"abt"); (4,3,"aam"); (4,4,"aar"); (4,5,"abs"); (5,1,"aar"); (5,2,"aau"); (5,3,"abt"); (5,4,"abs"); (5,5,"ab4"); (6,1,"abh"); (6,2,"aax"); (6,3,"aan"); (6,4,"aaw"); (6,5,"ab4"); (7,1,"abs"); (7,2,"aby"); (7,3,"abo"); (7,4,"abv"); (7,5,"aao"); (8,1,"aa4"); (8,2,"aba"); (8,3,"aai"); (8,4,"aa5"); (8,5,"aah"); (9,1,"ab6"); (9,2,"abb"); (9,3,"abi"); (9,4,"aau"); (9,5,"aa5"); (10,1,"abg"); (10,2,"aai"); (10,3,"aam"); (10,4,"aav"); (10,5,"aau")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abo"); (1,2,"aaa"); (1,3,"aau"); (1,4,"aae"); (2,1,"abx"); (2,2,"aat"); (2,3,"ab7"); (2,4,"abe"); (3,1,"abo"); (3,2,"aah"); (3,3,"abe"); (3,4,"aag"); (4,1,"aaz"); (4,2,"abt"); (4,3,"aar"); (4,4,"abs"); (5,1,"aar"); (5,2,"aau"); (5,3,"abs"); (5,4,"ab4"); (6,1,"abh"); (6,2,"aax"); (6,3,"aaw"); (6,4,"ab4"); (7,1,"abs"); (7,2,"aby"); (7,3,"abv"); (7,4,"aao"); (8,1,"aa4"); (8,2,"aba"); (8,3,"aa5"); (8,4,"aah"); (9,1,"ab6"); (9,2,"abb"); (9,3,"aau"); (9,4,"aa5"); (10,1,"abg"); (10,2,"aai"); (10,3,"aav"); (10,4,"aau")]
        ```
        

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (3) [(1,1,"abo"); (1,2,"aaa"); (1,3,"aby"); (1,4,"aau"); (1,5,"aae"); (2,1,"abx"); (2,2,"aat"); (2,3,"aby"); (2,4,"ab7"); (2,5,"abe"); (3,1,"abo"); (3,2,"aah"); (3,3,"aab"); (3,4,"abe"); (3,5,"aag"); (4,1,"aaz"); (4,2,"abt"); (4,3,"aam"); (4,4,"aar"); (4,5,"abs"); (5,1,"aar"); (5,2,"aau"); (5,3,"abt"); (5,4,"abs"); (5,5,"ab4"); (6,1,"abh"); (6,2,"aax"); (6,3,"aan"); (6,4,"aaw"); (6,5,"ab4"); (7,1,"abs"); (7,2,"aby"); (7,3,"abo"); (7,4,"abv"); (7,5,"aao"); (8,1,"aa4"); (8,2,"aba"); (8,3,"aai"); (8,4,"aa5"); (8,5,"aah"); (9,1,"ab6"); (9,2,"abb"); (9,3,"abi"); (9,4,"aau"); (9,5,"aa5"); (10,1,"abg"); (10,2,"aai"); (10,3,"aam"); (10,4,"aav"); (10,5,"aau")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abo"); (1,2,"aaa"); (1,3,"aau"); (1,4,"aae"); (2,1,"abx"); (2,2,"aat"); (2,3,"ab7"); (2,4,"abe"); (3,1,"abo"); (3,2,"aah"); (3,3,"abe"); (3,4,"aag"); (4,1,"aaz"); (4,2,"abt"); (4,3,"aar"); (4,4,"abs"); (5,1,"aar"); (5,2,"aau"); (5,3,"abs"); (5,4,"ab4"); (6,1,"abh"); (6,2,"aax"); (6,3,"aaw"); (6,4,"ab4"); (7,1,"abs"); (7,2,"aby"); (7,3,"abv"); (7,4,"aao"); (8,1,"aa4"); (8,2,"aba"); (8,3,"aa5"); (8,4,"aah"); (9,1,"ab6"); (9,2,"abb"); (9,3,"aau"); (9,4,"aa5"); (10,1,"abg"); (10,2,"aai"); (10,3,"aav"); (10,4,"aau")]
        ```
        

+  _0_ / _0.08_ : Fail: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (-1) [(1,1,"abo"); (1,2,"aaa"); (1,3,"aby"); (1,4,"aau"); (1,5,"aae"); (2,1,"abx"); (2,2,"aat"); (2,3,"aby"); (2,4,"ab7"); (2,5,"abe"); (3,1,"abo"); (3,2,"aah"); (3,3,"aab"); (3,4,"abe"); (3,5,"aag"); (4,1,"aaz"); (4,2,"abt"); (4,3,"aam"); (4,4,"aar"); (4,5,"abs"); (5,1,"aar"); (5,2,"aau"); (5,3,"abt"); (5,4,"abs"); (5,5,"ab4"); (6,1,"abh"); (6,2,"aax"); (6,3,"aan"); (6,4,"aaw"); (6,5,"ab4"); (7,1,"abs"); (7,2,"aby"); (7,3,"abo"); (7,4,"abv"); (7,5,"aao"); (8,1,"aa4"); (8,2,"aba"); (8,3,"aai"); (8,4,"aa5"); (8,5,"aah"); (9,1,"ab6"); (9,2,"abb"); (9,3,"abi"); (9,4,"aau"); (9,5,"aa5"); (10,1,"abg"); (10,2,"aai"); (10,3,"aam"); (10,4,"aav"); (10,5,"aau")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abo"); (1,2,"aaa"); (1,3,"aby"); (1,4,"aau"); (1,5,"aae"); (2,1,"abx"); (2,2,"aat"); (2,3,"aby"); (2,4,"ab7"); (2,5,"abe"); (3,1,"abo"); (3,2,"aah"); (3,3,"aab"); (3,4,"abe"); (3,5,"aag"); (4,1,"aaz"); (4,2,"abt"); (4,3,"aam"); (4,4,"aar"); (4,5,"abs"); (5,1,"aar"); (5,2,"aau"); (5,3,"abt"); (5,4,"abs"); (5,5,"ab4"); (6,1,"abh"); (6,2,"aax"); (6,3,"aan"); (6,4,"aaw"); (6,5,"ab4"); (7,1,"abs"); (7,2,"aby"); (7,3,"abo"); (7,4,"abv"); (7,5,"aao"); (8,1,"aa4"); (8,2,"aba"); (8,3,"aai"); (8,4,"aa5"); (8,5,"aah"); (9,1,"ab6"); (9,2,"abb"); (9,3,"abi"); (9,4,"aau"); (9,5,"aa5"); (10,1,"abg"); (10,2,"aai"); (10,3,"aam"); (10,4,"aav"); (10,5,"aau")]
        ```
        

FAILED with output:

```      val expected : (int * int * string) list =

  [(1, 1, "abo"); (1, 2, "aaa"); (1, 3, "aby"); (1, 4, "aau"); (1, 5, "aae");

   (2, 1, "abx"); (2, 2, "aat"); (2, 3, "aby"); (2, 4, "ab7"); (2, 5, "abe");

   (3, 1, "abo"); (3, 2, "aah"); (3, 3, "aab"); (3, 4, "abe"); (3, 5, "aag");

   (4, 1, "aaz"); (4, 2, "abt"); (4, 3, "aam"); (4, 4, "aar"); (4, 5, "abs");

   (5, 1, "aar"); (5, 2, "aau"); (5, 3, "abt"); (5, 4, "abs"); (5, 5, "ab4");

   (6, 1, "abh"); (6, 2, "aax"); (6, 3, "aan"); (6, 4, "aaw"); (6, 5, "ab4");

   (7, 1, "abs"); (7, 2, "aby"); (7, 3, "abo"); (7, 4, "abv"); (7, 5, "aao");

   (8, 1, "aa4"); (8, 2, "aba"); (8, 3, "aai"); (8, 4, "aa5"); (8, 5, "aah");

   (9, 1, "ab6"); (9, 2, "abb"); (9, 3, "abi"); (9, 4, "aau"); (9, 5, "aa5");

   (10, 1, "abg"); (10, 2, "aai"); (10, 3, "aam"); (10, 4, "aav");

   (10, 5, "aau")]

   val result : (int * int * string) list =

  [(1, 0, "abo"); (1, 1, "aaa"); (1, 2, "aby"); (1, 3, "aau"); (1, 4, "aae");

   (2, 0, "abx"); (2, 1, "aat"); (2, 2, "aby"); (2, 3, "ab7"); (2, 4, "abe");

   (3, 0, "abo"); (3, 1, "aah"); (3, 2, "aab"); (3, 3, "abe"); (3, 4, "aag");

   (4, 0, "aaz"); (4, 1, "abt"); (4, 2, "aam"); (4, 3, "aar"); (4, 4, "abs");

   (5, 0, "aar"); (5, 1, "aau"); (5, 2, "abt"); (5, 3, "abs"); (5, 4, "ab4");

   (6, 0, "abh"); (6, 1, "aax"); (6, 2, "aan"); (6, 3, "aaw"); (6, 4, "ab4");

   (7, 0, "abs"); (7, 1, "aby"); (7, 2, "abo"); (7, 3, "abv"); (7, 4, "aao");

   (8, 0, "aa4"); (8, 1, "aba"); (8, 2, "aai"); (8, 3, "aa5"); (8, 4, "aah");

   (9, 0, "ab6"); (9, 1, "abb"); (9, 2, "abi"); (9, 3, "aau"); (9, 4, "aa5");

   (10, 0, "abg"); (10, 1, "aai"); (10, 2, "aam"); (10, 3, "aav");

   (10, 4, "aau")]

```

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (5) [(1,1,"abo"); (1,2,"aaa"); (1,3,"aby"); (1,4,"aau"); (1,5,"aae"); (2,1,"abx"); (2,2,"aat"); (2,3,"aby"); (2,4,"ab7"); (2,5,"abe"); (3,1,"abo"); (3,2,"aah"); (3,3,"aab"); (3,4,"abe"); (3,5,"aag"); (4,1,"aaz"); (4,2,"abt"); (4,3,"aam"); (4,4,"aar"); (4,5,"abs"); (5,1,"aar"); (5,2,"aau"); (5,3,"abt"); (5,4,"abs"); (5,5,"ab4"); (6,1,"abh"); (6,2,"aax"); (6,3,"aan"); (6,4,"aaw"); (6,5,"ab4"); (7,1,"abs"); (7,2,"aby"); (7,3,"abo"); (7,4,"abv"); (7,5,"aao"); (8,1,"aa4"); (8,2,"aba"); (8,3,"aai"); (8,4,"aa5"); (8,5,"aah"); (9,1,"ab6"); (9,2,"abb"); (9,3,"abi"); (9,4,"aau"); (9,5,"aa5"); (10,1,"abg"); (10,2,"aai"); (10,3,"aam"); (10,4,"aav"); (10,5,"aau")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abo"); (1,2,"aaa"); (1,3,"aby"); (1,4,"aau"); (2,1,"abx"); (2,2,"aat"); (2,3,"aby"); (2,4,"ab7"); (3,1,"abo"); (3,2,"aah"); (3,3,"aab"); (3,4,"abe"); (4,1,"aaz"); (4,2,"abt"); (4,3,"aam"); (4,4,"aar"); (5,1,"aar"); (5,2,"aau"); (5,3,"abt"); (5,4,"abs"); (6,1,"abh"); (6,2,"aax"); (6,3,"aan"); (6,4,"aaw"); (7,1,"abs"); (7,2,"aby"); (7,3,"abo"); (7,4,"abv"); (8,1,"aa4"); (8,2,"aba"); (8,3,"aai"); (8,4,"aa5"); (9,1,"ab6"); (9,2,"abb"); (9,3,"abi"); (9,4,"aau"); (10,1,"abg"); (10,2,"aai"); (10,3,"aam"); (10,4,"aav")]
        ```
        

+  _0_ / _0.08_ : Fail: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (-1) [(1,1,"aav"); (1,2,"aa3"); (1,3,"abv"); (1,4,"abc"); (2,1,"aaz"); (2,2,"ab3"); (2,3,"abn"); (2,4,"aan"); (3,1,"aap"); (3,2,"abj"); (3,3,"ab3"); (3,4,"abi"); (4,1,"aba"); (4,2,"aa7"); (4,3,"aat"); (4,4,"abs"); (5,1,"aam"); (5,2,"aah"); (5,3,"ab3"); (5,4,"abi"); (6,1,"aa4"); (6,2,"aao"); (6,3,"aar"); (6,4,"aa7"); (7,1,"abm"); (7,2,"aas"); (7,3,"aat"); (7,4,"abx"); (8,1,"abh"); (8,2,"aas"); (8,3,"ab4"); (8,4,"abn")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aav"); (1,2,"aa3"); (1,3,"abv"); (1,4,"abc"); (2,1,"aaz"); (2,2,"ab3"); (2,3,"abn"); (2,4,"aan"); (3,1,"aap"); (3,2,"abj"); (3,3,"ab3"); (3,4,"abi"); (4,1,"aba"); (4,2,"aa7"); (4,3,"aat"); (4,4,"abs"); (5,1,"aam"); (5,2,"aah"); (5,3,"ab3"); (5,4,"abi"); (6,1,"aa4"); (6,2,"aao"); (6,3,"aar"); (6,4,"aa7"); (7,1,"abm"); (7,2,"aas"); (7,3,"aat"); (7,4,"abx"); (8,1,"abh"); (8,2,"aas"); (8,3,"ab4"); (8,4,"abn")]
        ```
        

FAILED with output:

```    val expected : (int * int * string) list =

  [(1, 1, "aav"); (1, 2, "aa3"); (1, 3, "abv"); (1, 4, "abc"); (2, 1, "aaz");

   (2, 2, "ab3"); (2, 3, "abn"); (2, 4, "aan"); (3, 1, "aap"); (3, 2, "abj");

   (3, 3, "ab3"); (3, 4, "abi"); (4, 1, "aba"); (4, 2, "aa7"); (4, 3, "aat");

   (4, 4, "abs"); (5, 1, "aam"); (5, 2, "aah"); (5, 3, "ab3"); (5, 4, "abi");

   (6, 1, "aa4"); (6, 2, "aao"); (6, 3, "aar"); (6, 4, "aa7"); (7, 1, "abm");

   (7, 2, "aas"); (7, 3, "aat"); (7, 4, "abx"); (8, 1, "abh"); (8, 2, "aas");

   (8, 3, "ab4"); (8, 4, "abn")]

 val result : (int * int * string) list =

  [(1, 0, "aav"); (1, 1, "aa3"); (1, 2, "abv"); (1, 3, "abc"); (2, 0, "aaz");

   (2, 1, "ab3"); (2, 2, "abn"); (2, 3, "aan"); (3, 0, "aap"); (3, 1, "abj");

   (3, 2, "ab3"); (3, 3, "abi"); (4, 0, "aba"); (4, 1, "aa7"); (4, 2, "aat");

   (4, 3, "abs"); (5, 0, "aam"); (5, 1, "aah"); (5, 2, "ab3"); (5, 3, "abi");

   (6, 0, "aa4"); (6, 1, "aao"); (6, 2, "aar"); (6, 3, "aa7"); (7, 0, "abm");

   (7, 1, "aas"); (7, 2, "aat"); (7, 3, "abx"); (8, 0, "abh"); (8, 1, "aas");

   (8, 2, "ab4"); (8, 3, "abn")]

```

+  _0_ / _0.08_ : Fail: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (0) [(1,1,"aav"); (1,2,"aa3"); (1,3,"abv"); (1,4,"abc"); (2,1,"aaz"); (2,2,"ab3"); (2,3,"abn"); (2,4,"aan"); (3,1,"aap"); (3,2,"abj"); (3,3,"ab3"); (3,4,"abi"); (4,1,"aba"); (4,2,"aa7"); (4,3,"aat"); (4,4,"abs"); (5,1,"aam"); (5,2,"aah"); (5,3,"ab3"); (5,4,"abi"); (6,1,"aa4"); (6,2,"aao"); (6,3,"aar"); (6,4,"aa7"); (7,1,"abm"); (7,2,"aas"); (7,3,"aat"); (7,4,"abx"); (8,1,"abh"); (8,2,"aas"); (8,3,"ab4"); (8,4,"abn")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aav"); (1,2,"aa3"); (1,3,"abv"); (1,4,"abc"); (2,1,"aaz"); (2,2,"ab3"); (2,3,"abn"); (2,4,"aan"); (3,1,"aap"); (3,2,"abj"); (3,3,"ab3"); (3,4,"abi"); (4,1,"aba"); (4,2,"aa7"); (4,3,"aat"); (4,4,"abs"); (5,1,"aam"); (5,2,"aah"); (5,3,"ab3"); (5,4,"abi"); (6,1,"aa4"); (6,2,"aao"); (6,3,"aar"); (6,4,"aa7"); (7,1,"abm"); (7,2,"aas"); (7,3,"aat"); (7,4,"abx"); (8,1,"abh"); (8,2,"aas"); (8,3,"ab4"); (8,4,"abn")]
        ```
        

FAILED with output:

```    val expected : (int * int * string) list =

  [(1, 1, "aav"); (1, 2, "aa3"); (1, 3, "abv"); (1, 4, "abc"); (2, 1, "aaz");

   (2, 2, "ab3"); (2, 3, "abn"); (2, 4, "aan"); (3, 1, "aap"); (3, 2, "abj");

   (3, 3, "ab3"); (3, 4, "abi"); (4, 1, "aba"); (4, 2, "aa7"); (4, 3, "aat");

   (4, 4, "abs"); (5, 1, "aam"); (5, 2, "aah"); (5, 3, "ab3"); (5, 4, "abi");

   (6, 1, "aa4"); (6, 2, "aao"); (6, 3, "aar"); (6, 4, "aa7"); (7, 1, "abm");

   (7, 2, "aas"); (7, 3, "aat"); (7, 4, "abx"); (8, 1, "abh"); (8, 2, "aas");

   (8, 3, "ab4"); (8, 4, "abn")]

 val result : (int * int * string) list =

  [(1, 0, "aav"); (1, 1, "aa3"); (1, 2, "abv"); (1, 3, "abc"); (2, 0, "aaz");

   (2, 1, "ab3"); (2, 2, "abn"); (2, 3, "aan"); (3, 0, "aap"); (3, 1, "abj");

   (3, 2, "ab3"); (3, 3, "abi"); (4, 0, "aba"); (4, 1, "aa7"); (4, 2, "aat");

   (4, 3, "abs"); (5, 0, "aam"); (5, 1, "aah"); (5, 2, "ab3"); (5, 3, "abi");

   (6, 0, "aa4"); (6, 1, "aao"); (6, 2, "aar"); (6, 3, "aa7"); (7, 0, "abm");

   (7, 1, "aas"); (7, 2, "aat"); (7, 3, "abx"); (8, 0, "abh"); (8, 1, "aas");

   (8, 2, "ab4"); (8, 3, "abn")]

```

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (4) [(1,1,"aav"); (1,2,"aa3"); (1,3,"abv"); (1,4,"abc"); (2,1,"aaz"); (2,2,"ab3"); (2,3,"abn"); (2,4,"aan"); (3,1,"aap"); (3,2,"abj"); (3,3,"ab3"); (3,4,"abi"); (4,1,"aba"); (4,2,"aa7"); (4,3,"aat"); (4,4,"abs"); (5,1,"aam"); (5,2,"aah"); (5,3,"ab3"); (5,4,"abi"); (6,1,"aa4"); (6,2,"aao"); (6,3,"aar"); (6,4,"aa7"); (7,1,"abm"); (7,2,"aas"); (7,3,"aat"); (7,4,"abx"); (8,1,"abh"); (8,2,"aas"); (8,3,"ab4"); (8,4,"abn")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aav"); (1,2,"aa3"); (1,3,"abv"); (2,1,"aaz"); (2,2,"ab3"); (2,3,"abn"); (3,1,"aap"); (3,2,"abj"); (3,3,"ab3"); (4,1,"aba"); (4,2,"aa7"); (4,3,"aat"); (5,1,"aam"); (5,2,"aah"); (5,3,"ab3"); (6,1,"aa4"); (6,2,"aao"); (6,3,"aar"); (7,1,"abm"); (7,2,"aas"); (7,3,"aat"); (8,1,"abh"); (8,2,"aas"); (8,3,"ab4")]
        ```
        

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (4) [(1,1,"aav"); (1,2,"aa3"); (1,3,"abv"); (1,4,"abc"); (2,1,"aaz"); (2,2,"ab3"); (2,3,"abn"); (2,4,"aan"); (3,1,"aap"); (3,2,"abj"); (3,3,"ab3"); (3,4,"abi"); (4,1,"aba"); (4,2,"aa7"); (4,3,"aat"); (4,4,"abs"); (5,1,"aam"); (5,2,"aah"); (5,3,"ab3"); (5,4,"abi"); (6,1,"aa4"); (6,2,"aao"); (6,3,"aar"); (6,4,"aa7"); (7,1,"abm"); (7,2,"aas"); (7,3,"aat"); (7,4,"abx"); (8,1,"abh"); (8,2,"aas"); (8,3,"ab4"); (8,4,"abn")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aav"); (1,2,"aa3"); (1,3,"abv"); (2,1,"aaz"); (2,2,"ab3"); (2,3,"abn"); (3,1,"aap"); (3,2,"abj"); (3,3,"ab3"); (4,1,"aba"); (4,2,"aa7"); (4,3,"aat"); (5,1,"aam"); (5,2,"aah"); (5,3,"ab3"); (6,1,"aa4"); (6,2,"aao"); (6,3,"aar"); (7,1,"abm"); (7,2,"aas"); (7,3,"aat"); (8,1,"abh"); (8,2,"aas"); (8,3,"ab4")]
        ```
        

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (5) [(1,1,"aav"); (1,2,"aa3"); (1,3,"abv"); (1,4,"abc"); (2,1,"aaz"); (2,2,"ab3"); (2,3,"abn"); (2,4,"aan"); (3,1,"aap"); (3,2,"abj"); (3,3,"ab3"); (3,4,"abi"); (4,1,"aba"); (4,2,"aa7"); (4,3,"aat"); (4,4,"abs"); (5,1,"aam"); (5,2,"aah"); (5,3,"ab3"); (5,4,"abi"); (6,1,"aa4"); (6,2,"aao"); (6,3,"aar"); (6,4,"aa7"); (7,1,"abm"); (7,2,"aas"); (7,3,"aat"); (7,4,"abx"); (8,1,"abh"); (8,2,"aas"); (8,3,"ab4"); (8,4,"abn")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aav"); (1,2,"aa3"); (1,3,"abv"); (1,4,"abc"); (2,1,"aaz"); (2,2,"ab3"); (2,3,"abn"); (2,4,"aan"); (3,1,"aap"); (3,2,"abj"); (3,3,"ab3"); (3,4,"abi"); (4,1,"aba"); (4,2,"aa7"); (4,3,"aat"); (4,4,"abs"); (5,1,"aam"); (5,2,"aah"); (5,3,"ab3"); (5,4,"abi"); (6,1,"aa4"); (6,2,"aao"); (6,3,"aar"); (6,4,"aa7"); (7,1,"abm"); (7,2,"aas"); (7,3,"aat"); (7,4,"abx"); (8,1,"abh"); (8,2,"aas"); (8,3,"ab4"); (8,4,"abn")]
        ```
        

+  _0_ / _0.08_ : Fail: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (-1) [(1,1,"aai"); (1,2,"abz"); (1,3,"abn"); (2,1,"aaz"); (2,2,"aan"); (2,3,"aaf"); (3,1,"abt"); (3,2,"abn"); (3,3,"abn"); (4,1,"aa5"); (4,2,"abz"); (4,3,"aau"); (5,1,"abo"); (5,2,"aad"); (5,3,"abv"); (6,1,"abp"); (6,2,"aag"); (6,3,"aah"); (7,1,"aat"); (7,2,"aar"); (7,3,"aap"); (8,1,"abf"); (8,2,"abz"); (8,3,"aay"); (9,1,"abz"); (9,2,"abk"); (9,3,"abp"); (10,1,"aan"); (10,2,"aa4"); (10,3,"aab"); (11,1,"aad"); (11,2,"aas"); (11,3,"aao"); (12,1,"ab3"); (12,2,"abx"); (12,3,"aau")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aai"); (1,2,"abz"); (1,3,"abn"); (2,1,"aaz"); (2,2,"aan"); (2,3,"aaf"); (3,1,"abt"); (3,2,"abn"); (3,3,"abn"); (4,1,"aa5"); (4,2,"abz"); (4,3,"aau"); (5,1,"abo"); (5,2,"aad"); (5,3,"abv"); (6,1,"abp"); (6,2,"aag"); (6,3,"aah"); (7,1,"aat"); (7,2,"aar"); (7,3,"aap"); (8,1,"abf"); (8,2,"abz"); (8,3,"aay"); (9,1,"abz"); (9,2,"abk"); (9,3,"abp"); (10,1,"aan"); (10,2,"aa4"); (10,3,"aab"); (11,1,"aad"); (11,2,"aas"); (11,3,"aao"); (12,1,"ab3"); (12,2,"abx"); (12,3,"aau")]
        ```
        

FAILED with output:

```      val expected : (int * int * string) list =

  [(1, 1, "aai"); (1, 2, "abz"); (1, 3, "abn"); (2, 1, "aaz"); (2, 2, "aan");

   (2, 3, "aaf"); (3, 1, "abt"); (3, 2, "abn"); (3, 3, "abn"); (4, 1, "aa5");

   (4, 2, "abz"); (4, 3, "aau"); (5, 1, "abo"); (5, 2, "aad"); (5, 3, "abv");

   (6, 1, "abp"); (6, 2, "aag"); (6, 3, "aah"); (7, 1, "aat"); (7, 2, "aar");

   (7, 3, "aap"); (8, 1, "abf"); (8, 2, "abz"); (8, 3, "aay"); (9, 1, "abz");

   (9, 2, "abk"); (9, 3, "abp"); (10, 1, "aan"); (10, 2, "aa4");

   (10, 3, "aab"); (11, 1, "aad"); (11, 2, "aas"); (11, 3, "aao");

   (12, 1, "ab3"); (12, 2, "abx"); (12, 3, "aau")]

   val result : (int * int * string) list =

  [(1, 0, "aai"); (1, 1, "abz"); (1, 2, "abn"); (2, 0, "aaz"); (2, 1, "aan");

   (2, 2, "aaf"); (3, 0, "abt"); (3, 1, "abn"); (3, 2, "abn"); (4, 0, "aa5");

   (4, 1, "abz"); (4, 2, "aau"); (5, 0, "abo"); (5, 1, "aad"); (5, 2, "abv");

   (6, 0, "abp"); (6, 1, "aag"); (6, 2, "aah"); (7, 0, "aat"); (7, 1, "aar");

   (7, 2, "aap"); (8, 0, "abf"); (8, 1, "abz"); (8, 2, "aay"); (9, 0, "abz");

   (9, 1, "abk"); (9, 2, "abp"); (10, 0, "aan"); (10, 1, "aa4");

   (10, 2, "aab"); (11, 0, "aad"); (11, 1, "aas"); (11, 2, "aao");

   (12, 0, "ab3"); (12, 1, "abx"); (12, 2, "aau")]

```

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (2) [(1,1,"aai"); (1,2,"abz"); (1,3,"abn"); (2,1,"aaz"); (2,2,"aan"); (2,3,"aaf"); (3,1,"abt"); (3,2,"abn"); (3,3,"abn"); (4,1,"aa5"); (4,2,"abz"); (4,3,"aau"); (5,1,"abo"); (5,2,"aad"); (5,3,"abv"); (6,1,"abp"); (6,2,"aag"); (6,3,"aah"); (7,1,"aat"); (7,2,"aar"); (7,3,"aap"); (8,1,"abf"); (8,2,"abz"); (8,3,"aay"); (9,1,"abz"); (9,2,"abk"); (9,3,"abp"); (10,1,"aan"); (10,2,"aa4"); (10,3,"aab"); (11,1,"aad"); (11,2,"aas"); (11,3,"aao"); (12,1,"ab3"); (12,2,"abx"); (12,3,"aau")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aai"); (1,2,"abn"); (2,1,"aaz"); (2,2,"aaf"); (3,1,"abt"); (3,2,"abn"); (4,1,"aa5"); (4,2,"aau"); (5,1,"abo"); (5,2,"abv"); (6,1,"abp"); (6,2,"aah"); (7,1,"aat"); (7,2,"aap"); (8,1,"abf"); (8,2,"aay"); (9,1,"abz"); (9,2,"abp"); (10,1,"aan"); (10,2,"aab"); (11,1,"aad"); (11,2,"aao"); (12,1,"ab3"); (12,2,"aau")]
        ```
        

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (1) [(1,1,"aai"); (1,2,"abz"); (1,3,"abn"); (2,1,"aaz"); (2,2,"aan"); (2,3,"aaf"); (3,1,"abt"); (3,2,"abn"); (3,3,"abn"); (4,1,"aa5"); (4,2,"abz"); (4,3,"aau"); (5,1,"abo"); (5,2,"aad"); (5,3,"abv"); (6,1,"abp"); (6,2,"aag"); (6,3,"aah"); (7,1,"aat"); (7,2,"aar"); (7,3,"aap"); (8,1,"abf"); (8,2,"abz"); (8,3,"aay"); (9,1,"abz"); (9,2,"abk"); (9,3,"abp"); (10,1,"aan"); (10,2,"aa4"); (10,3,"aab"); (11,1,"aad"); (11,2,"aas"); (11,3,"aao"); (12,1,"ab3"); (12,2,"abx"); (12,3,"aau")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abz"); (1,2,"abn"); (2,1,"aan"); (2,2,"aaf"); (3,1,"abn"); (3,2,"abn"); (4,1,"abz"); (4,2,"aau"); (5,1,"aad"); (5,2,"abv"); (6,1,"aag"); (6,2,"aah"); (7,1,"aar"); (7,2,"aap"); (8,1,"abz"); (8,2,"aay"); (9,1,"abk"); (9,2,"abp"); (10,1,"aa4"); (10,2,"aab"); (11,1,"aas"); (11,2,"aao"); (12,1,"abx"); (12,2,"aau")]
        ```
        

+  _0_ / _0.08_ : Fail: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (-1) [(1,1,"aai"); (1,2,"abz"); (1,3,"abn"); (2,1,"aaz"); (2,2,"aan"); (2,3,"aaf"); (3,1,"abt"); (3,2,"abn"); (3,3,"abn"); (4,1,"aa5"); (4,2,"abz"); (4,3,"aau"); (5,1,"abo"); (5,2,"aad"); (5,3,"abv"); (6,1,"abp"); (6,2,"aag"); (6,3,"aah"); (7,1,"aat"); (7,2,"aar"); (7,3,"aap"); (8,1,"abf"); (8,2,"abz"); (8,3,"aay"); (9,1,"abz"); (9,2,"abk"); (9,3,"abp"); (10,1,"aan"); (10,2,"aa4"); (10,3,"aab"); (11,1,"aad"); (11,2,"aas"); (11,3,"aao"); (12,1,"ab3"); (12,2,"abx"); (12,3,"aau")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aai"); (1,2,"abz"); (1,3,"abn"); (2,1,"aaz"); (2,2,"aan"); (2,3,"aaf"); (3,1,"abt"); (3,2,"abn"); (3,3,"abn"); (4,1,"aa5"); (4,2,"abz"); (4,3,"aau"); (5,1,"abo"); (5,2,"aad"); (5,3,"abv"); (6,1,"abp"); (6,2,"aag"); (6,3,"aah"); (7,1,"aat"); (7,2,"aar"); (7,3,"aap"); (8,1,"abf"); (8,2,"abz"); (8,3,"aay"); (9,1,"abz"); (9,2,"abk"); (9,3,"abp"); (10,1,"aan"); (10,2,"aa4"); (10,3,"aab"); (11,1,"aad"); (11,2,"aas"); (11,3,"aao"); (12,1,"ab3"); (12,2,"abx"); (12,3,"aau")]
        ```
        

FAILED with output:

```      val expected : (int * int * string) list =

  [(1, 1, "aai"); (1, 2, "abz"); (1, 3, "abn"); (2, 1, "aaz"); (2, 2, "aan");

   (2, 3, "aaf"); (3, 1, "abt"); (3, 2, "abn"); (3, 3, "abn"); (4, 1, "aa5");

   (4, 2, "abz"); (4, 3, "aau"); (5, 1, "abo"); (5, 2, "aad"); (5, 3, "abv");

   (6, 1, "abp"); (6, 2, "aag"); (6, 3, "aah"); (7, 1, "aat"); (7, 2, "aar");

   (7, 3, "aap"); (8, 1, "abf"); (8, 2, "abz"); (8, 3, "aay"); (9, 1, "abz");

   (9, 2, "abk"); (9, 3, "abp"); (10, 1, "aan"); (10, 2, "aa4");

   (10, 3, "aab"); (11, 1, "aad"); (11, 2, "aas"); (11, 3, "aao");

   (12, 1, "ab3"); (12, 2, "abx"); (12, 3, "aau")]

   val result : (int * int * string) list =

  [(1, 0, "aai"); (1, 1, "abz"); (1, 2, "abn"); (2, 0, "aaz"); (2, 1, "aan");

   (2, 2, "aaf"); (3, 0, "abt"); (3, 1, "abn"); (3, 2, "abn"); (4, 0, "aa5");

   (4, 1, "abz"); (4, 2, "aau"); (5, 0, "abo"); (5, 1, "aad"); (5, 2, "abv");

   (6, 0, "abp"); (6, 1, "aag"); (6, 2, "aah"); (7, 0, "aat"); (7, 1, "aar");

   (7, 2, "aap"); (8, 0, "abf"); (8, 1, "abz"); (8, 2, "aay"); (9, 0, "abz");

   (9, 1, "abk"); (9, 2, "abp"); (10, 0, "aan"); (10, 1, "aa4");

   (10, 2, "aab"); (11, 0, "aad"); (11, 1, "aas"); (11, 2, "aao");

   (12, 0, "ab3"); (12, 1, "abx"); (12, 2, "aau")]

```

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (1) [(1,1,"aai"); (1,2,"abz"); (1,3,"abn"); (2,1,"aaz"); (2,2,"aan"); (2,3,"aaf"); (3,1,"abt"); (3,2,"abn"); (3,3,"abn"); (4,1,"aa5"); (4,2,"abz"); (4,3,"aau"); (5,1,"abo"); (5,2,"aad"); (5,3,"abv"); (6,1,"abp"); (6,2,"aag"); (6,3,"aah"); (7,1,"aat"); (7,2,"aar"); (7,3,"aap"); (8,1,"abf"); (8,2,"abz"); (8,3,"aay"); (9,1,"abz"); (9,2,"abk"); (9,3,"abp"); (10,1,"aan"); (10,2,"aa4"); (10,3,"aab"); (11,1,"aad"); (11,2,"aas"); (11,3,"aao"); (12,1,"ab3"); (12,2,"abx"); (12,3,"aau")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abz"); (1,2,"abn"); (2,1,"aan"); (2,2,"aaf"); (3,1,"abn"); (3,2,"abn"); (4,1,"abz"); (4,2,"aau"); (5,1,"aad"); (5,2,"abv"); (6,1,"aag"); (6,2,"aah"); (7,1,"aar"); (7,2,"aap"); (8,1,"abz"); (8,2,"aay"); (9,1,"abk"); (9,2,"abp"); (10,1,"aa4"); (10,2,"aab"); (11,1,"aas"); (11,2,"aao"); (12,1,"abx"); (12,2,"aau")]
        ```
        

+  _0_ / _0.08_ : Fail: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (-1) [(1,1,"abk"); (1,2,"abc"); (1,3,"abb"); (2,1,"abt"); (2,2,"aaq"); (2,3,"aaw"); (3,1,"ab7"); (3,2,"aa5"); (3,3,"aay"); (4,1,"abh"); (4,2,"aae"); (4,3,"abk"); (5,1,"aab"); (5,2,"aay"); (5,3,"abd"); (6,1,"aah"); (6,2,"aa4"); (6,3,"aaa"); (7,1,"abe"); (7,2,"aa6"); (7,3,"ab7"); (8,1,"aaj"); (8,2,"ab3"); (8,3,"abq")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abk"); (1,2,"abc"); (1,3,"abb"); (2,1,"abt"); (2,2,"aaq"); (2,3,"aaw"); (3,1,"ab7"); (3,2,"aa5"); (3,3,"aay"); (4,1,"abh"); (4,2,"aae"); (4,3,"abk"); (5,1,"aab"); (5,2,"aay"); (5,3,"abd"); (6,1,"aah"); (6,2,"aa4"); (6,3,"aaa"); (7,1,"abe"); (7,2,"aa6"); (7,3,"ab7"); (8,1,"aaj"); (8,2,"ab3"); (8,3,"abq")]
        ```
        

FAILED with output:

```    val expected : (int * int * string) list =

  [(1, 1, "abk"); (1, 2, "abc"); (1, 3, "abb"); (2, 1, "abt"); (2, 2, "aaq");

   (2, 3, "aaw"); (3, 1, "ab7"); (3, 2, "aa5"); (3, 3, "aay"); (4, 1, "abh");

   (4, 2, "aae"); (4, 3, "abk"); (5, 1, "aab"); (5, 2, "aay"); (5, 3, "abd");

   (6, 1, "aah"); (6, 2, "aa4"); (6, 3, "aaa"); (7, 1, "abe"); (7, 2, "aa6");

   (7, 3, "ab7"); (8, 1, "aaj"); (8, 2, "ab3"); (8, 3, "abq")]

 val result : (int * int * string) list =

  [(1, 0, "abk"); (1, 1, "abc"); (1, 2, "abb"); (2, 0, "abt"); (2, 1, "aaq");

   (2, 2, "aaw"); (3, 0, "ab7"); (3, 1, "aa5"); (3, 2, "aay"); (4, 0, "abh");

   (4, 1, "aae"); (4, 2, "abk"); (5, 0, "aab"); (5, 1, "aay"); (5, 2, "abd");

   (6, 0, "aah"); (6, 1, "aa4"); (6, 2, "aaa"); (7, 0, "abe"); (7, 1, "aa6");

   (7, 2, "ab7"); (8, 0, "aaj"); (8, 1, "ab3"); (8, 2, "abq")]

```

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (4) [(1,1,"abk"); (1,2,"abc"); (1,3,"abb"); (2,1,"abt"); (2,2,"aaq"); (2,3,"aaw"); (3,1,"ab7"); (3,2,"aa5"); (3,3,"aay"); (4,1,"abh"); (4,2,"aae"); (4,3,"abk"); (5,1,"aab"); (5,2,"aay"); (5,3,"abd"); (6,1,"aah"); (6,2,"aa4"); (6,3,"aaa"); (7,1,"abe"); (7,2,"aa6"); (7,3,"ab7"); (8,1,"aaj"); (8,2,"ab3"); (8,3,"abq")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abk"); (1,2,"abc"); (1,3,"abb"); (2,1,"abt"); (2,2,"aaq"); (2,3,"aaw"); (3,1,"ab7"); (3,2,"aa5"); (3,3,"aay"); (4,1,"abh"); (4,2,"aae"); (4,3,"abk"); (5,1,"aab"); (5,2,"aay"); (5,3,"abd"); (6,1,"aah"); (6,2,"aa4"); (6,3,"aaa"); (7,1,"abe"); (7,2,"aa6"); (7,3,"ab7"); (8,1,"aaj"); (8,2,"ab3"); (8,3,"abq")]
        ```
        

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (3) [(1,1,"abk"); (1,2,"abc"); (1,3,"abb"); (2,1,"abt"); (2,2,"aaq"); (2,3,"aaw"); (3,1,"ab7"); (3,2,"aa5"); (3,3,"aay"); (4,1,"abh"); (4,2,"aae"); (4,3,"abk"); (5,1,"aab"); (5,2,"aay"); (5,3,"abd"); (6,1,"aah"); (6,2,"aa4"); (6,3,"aaa"); (7,1,"abe"); (7,2,"aa6"); (7,3,"ab7"); (8,1,"aaj"); (8,2,"ab3"); (8,3,"abq")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abk"); (1,2,"abc"); (2,1,"abt"); (2,2,"aaq"); (3,1,"ab7"); (3,2,"aa5"); (4,1,"abh"); (4,2,"aae"); (5,1,"aab"); (5,2,"aay"); (6,1,"aah"); (6,2,"aa4"); (7,1,"abe"); (7,2,"aa6"); (8,1,"aaj"); (8,2,"ab3")]
        ```
        

+  _0_ / _0.08_ : Fail: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (-1) [(1,1,"abk"); (1,2,"abc"); (1,3,"abb"); (2,1,"abt"); (2,2,"aaq"); (2,3,"aaw"); (3,1,"ab7"); (3,2,"aa5"); (3,3,"aay"); (4,1,"abh"); (4,2,"aae"); (4,3,"abk"); (5,1,"aab"); (5,2,"aay"); (5,3,"abd"); (6,1,"aah"); (6,2,"aa4"); (6,3,"aaa"); (7,1,"abe"); (7,2,"aa6"); (7,3,"ab7"); (8,1,"aaj"); (8,2,"ab3"); (8,3,"abq")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abk"); (1,2,"abc"); (1,3,"abb"); (2,1,"abt"); (2,2,"aaq"); (2,3,"aaw"); (3,1,"ab7"); (3,2,"aa5"); (3,3,"aay"); (4,1,"abh"); (4,2,"aae"); (4,3,"abk"); (5,1,"aab"); (5,2,"aay"); (5,3,"abd"); (6,1,"aah"); (6,2,"aa4"); (6,3,"aaa"); (7,1,"abe"); (7,2,"aa6"); (7,3,"ab7"); (8,1,"aaj"); (8,2,"ab3"); (8,3,"abq")]
        ```
        

FAILED with output:

```    val expected : (int * int * string) list =

  [(1, 1, "abk"); (1, 2, "abc"); (1, 3, "abb"); (2, 1, "abt"); (2, 2, "aaq");

   (2, 3, "aaw"); (3, 1, "ab7"); (3, 2, "aa5"); (3, 3, "aay"); (4, 1, "abh");

   (4, 2, "aae"); (4, 3, "abk"); (5, 1, "aab"); (5, 2, "aay"); (5, 3, "abd");

   (6, 1, "aah"); (6, 2, "aa4"); (6, 3, "aaa"); (7, 1, "abe"); (7, 2, "aa6");

   (7, 3, "ab7"); (8, 1, "aaj"); (8, 2, "ab3"); (8, 3, "abq")]

 val result : (int * int * string) list =

  [(1, 0, "abk"); (1, 1, "abc"); (1, 2, "abb"); (2, 0, "abt"); (2, 1, "aaq");

   (2, 2, "aaw"); (3, 0, "ab7"); (3, 1, "aa5"); (3, 2, "aay"); (4, 0, "abh");

   (4, 1, "aae"); (4, 2, "abk"); (5, 0, "aab"); (5, 1, "aay"); (5, 2, "abd");

   (6, 0, "aah"); (6, 1, "aa4"); (6, 2, "aaa"); (7, 0, "abe"); (7, 1, "aa6");

   (7, 2, "ab7"); (8, 0, "aaj"); (8, 1, "ab3"); (8, 2, "abq")]

```

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (3) [(1,1,"abk"); (1,2,"abc"); (1,3,"abb"); (2,1,"abt"); (2,2,"aaq"); (2,3,"aaw"); (3,1,"ab7"); (3,2,"aa5"); (3,3,"aay"); (4,1,"abh"); (4,2,"aae"); (4,3,"abk"); (5,1,"aab"); (5,2,"aay"); (5,3,"abd"); (6,1,"aah"); (6,2,"aa4"); (6,3,"aaa"); (7,1,"abe"); (7,2,"aa6"); (7,3,"ab7"); (8,1,"aaj"); (8,2,"ab3"); (8,3,"abq")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abk"); (1,2,"abc"); (2,1,"abt"); (2,2,"aaq"); (3,1,"ab7"); (3,2,"aa5"); (4,1,"abh"); (4,2,"aae"); (5,1,"aab"); (5,2,"aay"); (6,1,"aah"); (6,2,"aa4"); (7,1,"abe"); (7,2,"aa6"); (8,1,"aaj"); (8,2,"ab3")]
        ```
        

+  _0_ / _0.08_ : Fail: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (-1) [(1,1,"abc"); (1,2,"aar"); (1,3,"abi"); (1,4,"abh"); (1,5,"abq"); (1,6,"abb"); (2,1,"aag"); (2,2,"aa6"); (2,3,"ab4"); (2,4,"aab"); (2,5,"abr"); (2,6,"aao"); (3,1,"aa7"); (3,2,"abw"); (3,3,"abg"); (3,4,"abn"); (3,5,"aak"); (3,6,"abz"); (4,1,"ab3"); (4,2,"aaj"); (4,3,"aae"); (4,4,"aai"); (4,5,"aav"); (4,6,"abz"); (5,1,"abk"); (5,2,"abx"); (5,3,"aas"); (5,4,"abj"); (5,5,"aak"); (5,6,"abp"); (6,1,"aaq"); (6,2,"abk"); (6,3,"aay"); (6,4,"abv"); (6,5,"abg"); (6,6,"abv"); (7,1,"ab3"); (7,2,"aad"); (7,3,"aaw"); (7,4,"aay"); (7,5,"aa2"); (7,6,"abp"); (8,1,"aak"); (8,2,"aa4"); (8,3,"abb"); (8,4,"aa7"); (8,5,"aar"); (8,6,"aal"); (9,1,"ab3"); (9,2,"aba"); (9,3,"abl"); (9,4,"abw"); (9,5,"aag"); (9,6,"aab"); (10,1,"aaa"); (10,2,"aa6"); (10,3,"abp"); (10,4,"aaj"); (10,5,"abz"); (10,6,"abi"); (11,1,"ab6"); (11,2,"abb"); (11,3,"aak"); (11,4,"aan"); (11,5,"abn"); (11,6,"abu"); (12,1,"abv"); (12,2,"abo"); (12,3,"ab3"); (12,4,"abd"); (12,5,"aag"); (12,6,"abl")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abc"); (1,2,"aar"); (1,3,"abi"); (1,4,"abh"); (1,5,"abq"); (1,6,"abb"); (2,1,"aag"); (2,2,"aa6"); (2,3,"ab4"); (2,4,"aab"); (2,5,"abr"); (2,6,"aao"); (3,1,"aa7"); (3,2,"abw"); (3,3,"abg"); (3,4,"abn"); (3,5,"aak"); (3,6,"abz"); (4,1,"ab3"); (4,2,"aaj"); (4,3,"aae"); (4,4,"aai"); (4,5,"aav"); (4,6,"abz"); (5,1,"abk"); (5,2,"abx"); (5,3,"aas"); (5,4,"abj"); (5,5,"aak"); (5,6,"abp"); (6,1,"aaq"); (6,2,"abk"); (6,3,"aay"); (6,4,"abv"); (6,5,"abg"); (6,6,"abv"); (7,1,"ab3"); (7,2,"aad"); (7,3,"aaw"); (7,4,"aay"); (7,5,"aa2"); (7,6,"abp"); (8,1,"aak"); (8,2,"aa4"); (8,3,"abb"); (8,4,"aa7"); (8,5,"aar"); (8,6,"aal"); (9,1,"ab3"); (9,2,"aba"); (9,3,"abl"); (9,4,"abw"); (9,5,"aag"); (9,6,"aab"); (10,1,"aaa"); (10,2,"aa6"); (10,3,"abp"); (10,4,"aaj"); (10,5,"abz"); (10,6,"abi"); (11,1,"ab6"); (11,2,"abb"); (11,3,"aak"); (11,4,"aan"); (11,5,"abn"); (11,6,"abu"); (12,1,"abv"); (12,2,"abo"); (12,3,"ab3"); (12,4,"abd"); (12,5,"aag"); (12,6,"abl")]
        ```
        

FAILED with output:

```      val expected : (int * int * string) list =

  [(1, 1, "abc"); (1, 2, "aar"); (1, 3, "abi"); (1, 4, "abh"); (1, 5, "abq");

   (1, 6, "abb"); (2, 1, "aag"); (2, 2, "aa6"); (2, 3, "ab4"); (2, 4, "aab");

   (2, 5, "abr"); (2, 6, "aao"); (3, 1, "aa7"); (3, 2, "abw"); (3, 3, "abg");

   (3, 4, "abn"); (3, 5, "aak"); (3, 6, "abz"); (4, 1, "ab3"); (4, 2, "aaj");

   (4, 3, "aae"); (4, 4, "aai"); (4, 5, "aav"); (4, 6, "abz"); (5, 1, "abk");

   (5, 2, "abx"); (5, 3, "aas"); (5, 4, "abj"); (5, 5, "aak"); (5, 6, "abp");

   (6, 1, "aaq"); (6, 2, "abk"); (6, 3, "aay"); (6, 4, "abv"); (6, 5, "abg");

   (6, 6, "abv"); (7, 1, "ab3"); (7, 2, "aad"); (7, 3, "aaw"); (7, 4, "aay");

   (7, 5, "aa2"); (7, 6, "abp"); (8, 1, "aak"); (8, 2, "aa4"); (8, 3, "abb");

   (8, 4, "aa7"); (8, 5, "aar"); (8, 6, "aal"); (9, 1, "ab3"); (9, 2, "aba");

   (9, 3, "abl"); (9, 4, "abw"); (9, 5, "aag"); (9, 6, "aab");

   (10, 1, "aaa"); (10, 2, "aa6"); (10, 3, "abp"); (10, 4, "aaj");

   (10, 5, "abz"); (10, 6, "abi"); (11, 1, "ab6"); (11, 2, "abb");

   (11, 3, "aak"); (11, 4, "aan"); (11, 5, "abn"); (11, 6, "abu");

   (12, 1, "abv"); (12, 2, "abo"); (12, 3, "ab3"); (12, 4, "abd");

   (12, 5, "aag"); (12, 6, "abl")]

   val result : (int * int * string) list =

  [(1, 0, "abc"); (1, 1, "aar"); (1, 2, "abi"); (1, 3, "abh"); (1, 4, "abq");

   (1, 5, "abb"); (2, 0, "aag"); (2, 1, "aa6"); (2, 2, "ab4"); (2, 3, "aab");

   (2, 4, "abr"); (2, 5, "aao"); (3, 0, "aa7"); (3, 1, "abw"); (3, 2, "abg");

   (3, 3, "abn"); (3, 4, "aak"); (3, 5, "abz"); (4, 0, "ab3"); (4, 1, "aaj");

   (4, 2, "aae"); (4, 3, "aai"); (4, 4, "aav"); (4, 5, "abz"); (5, 0, "abk");

   (5, 1, "abx"); (5, 2, "aas"); (5, 3, "abj"); (5, 4, "aak"); (5, 5, "abp");

   (6, 0, "aaq"); (6, 1, "abk"); (6, 2, "aay"); (6, 3, "abv"); (6, 4, "abg");

   (6, 5, "abv"); (7, 0, "ab3"); (7, 1, "aad"); (7, 2, "aaw"); (7, 3, "aay");

   (7, 4, "aa2"); (7, 5, "abp"); (8, 0, "aak"); (8, 1, "aa4"); (8, 2, "abb");

   (8, 3, "aa7"); (8, 4, "aar"); (8, 5, "aal"); (9, 0, "ab3"); (9, 1, "aba");

   (9, 2, "abl"); (9, 3, "abw"); (9, 4, "aag"); (9, 5, "aab");

   (10, 0, "aaa"); (10, 1, "aa6"); (10, 2, "abp"); (10, 3, "aaj");

   (10, 4, "abz"); (10, 5, "abi"); (11, 0, "ab6"); (11, 1, "abb");

   (11, 2, "aak"); (11, 3, "aan"); (11, 4, "abn"); (11, 5, "abu");

   (12, 0, "abv"); (12, 1, "abo"); (12, 2, "ab3"); (12, 3, "abd");

   (12, 4, "aag"); (12, 5, "abl")]

```

+  _0_ / _0.08_ : Fail: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (-1) [(1,1,"abc"); (1,2,"aar"); (1,3,"abi"); (1,4,"abh"); (1,5,"abq"); (1,6,"abb"); (2,1,"aag"); (2,2,"aa6"); (2,3,"ab4"); (2,4,"aab"); (2,5,"abr"); (2,6,"aao"); (3,1,"aa7"); (3,2,"abw"); (3,3,"abg"); (3,4,"abn"); (3,5,"aak"); (3,6,"abz"); (4,1,"ab3"); (4,2,"aaj"); (4,3,"aae"); (4,4,"aai"); (4,5,"aav"); (4,6,"abz"); (5,1,"abk"); (5,2,"abx"); (5,3,"aas"); (5,4,"abj"); (5,5,"aak"); (5,6,"abp"); (6,1,"aaq"); (6,2,"abk"); (6,3,"aay"); (6,4,"abv"); (6,5,"abg"); (6,6,"abv"); (7,1,"ab3"); (7,2,"aad"); (7,3,"aaw"); (7,4,"aay"); (7,5,"aa2"); (7,6,"abp"); (8,1,"aak"); (8,2,"aa4"); (8,3,"abb"); (8,4,"aa7"); (8,5,"aar"); (8,6,"aal"); (9,1,"ab3"); (9,2,"aba"); (9,3,"abl"); (9,4,"abw"); (9,5,"aag"); (9,6,"aab"); (10,1,"aaa"); (10,2,"aa6"); (10,3,"abp"); (10,4,"aaj"); (10,5,"abz"); (10,6,"abi"); (11,1,"ab6"); (11,2,"abb"); (11,3,"aak"); (11,4,"aan"); (11,5,"abn"); (11,6,"abu"); (12,1,"abv"); (12,2,"abo"); (12,3,"ab3"); (12,4,"abd"); (12,5,"aag"); (12,6,"abl")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abc"); (1,2,"aar"); (1,3,"abi"); (1,4,"abh"); (1,5,"abq"); (1,6,"abb"); (2,1,"aag"); (2,2,"aa6"); (2,3,"ab4"); (2,4,"aab"); (2,5,"abr"); (2,6,"aao"); (3,1,"aa7"); (3,2,"abw"); (3,3,"abg"); (3,4,"abn"); (3,5,"aak"); (3,6,"abz"); (4,1,"ab3"); (4,2,"aaj"); (4,3,"aae"); (4,4,"aai"); (4,5,"aav"); (4,6,"abz"); (5,1,"abk"); (5,2,"abx"); (5,3,"aas"); (5,4,"abj"); (5,5,"aak"); (5,6,"abp"); (6,1,"aaq"); (6,2,"abk"); (6,3,"aay"); (6,4,"abv"); (6,5,"abg"); (6,6,"abv"); (7,1,"ab3"); (7,2,"aad"); (7,3,"aaw"); (7,4,"aay"); (7,5,"aa2"); (7,6,"abp"); (8,1,"aak"); (8,2,"aa4"); (8,3,"abb"); (8,4,"aa7"); (8,5,"aar"); (8,6,"aal"); (9,1,"ab3"); (9,2,"aba"); (9,3,"abl"); (9,4,"abw"); (9,5,"aag"); (9,6,"aab"); (10,1,"aaa"); (10,2,"aa6"); (10,3,"abp"); (10,4,"aaj"); (10,5,"abz"); (10,6,"abi"); (11,1,"ab6"); (11,2,"abb"); (11,3,"aak"); (11,4,"aan"); (11,5,"abn"); (11,6,"abu"); (12,1,"abv"); (12,2,"abo"); (12,3,"ab3"); (12,4,"abd"); (12,5,"aag"); (12,6,"abl")]
        ```
        

FAILED with output:

```      val expected : (int * int * string) list =

  [(1, 1, "abc"); (1, 2, "aar"); (1, 3, "abi"); (1, 4, "abh"); (1, 5, "abq");

   (1, 6, "abb"); (2, 1, "aag"); (2, 2, "aa6"); (2, 3, "ab4"); (2, 4, "aab");

   (2, 5, "abr"); (2, 6, "aao"); (3, 1, "aa7"); (3, 2, "abw"); (3, 3, "abg");

   (3, 4, "abn"); (3, 5, "aak"); (3, 6, "abz"); (4, 1, "ab3"); (4, 2, "aaj");

   (4, 3, "aae"); (4, 4, "aai"); (4, 5, "aav"); (4, 6, "abz"); (5, 1, "abk");

   (5, 2, "abx"); (5, 3, "aas"); (5, 4, "abj"); (5, 5, "aak"); (5, 6, "abp");

   (6, 1, "aaq"); (6, 2, "abk"); (6, 3, "aay"); (6, 4, "abv"); (6, 5, "abg");

   (6, 6, "abv"); (7, 1, "ab3"); (7, 2, "aad"); (7, 3, "aaw"); (7, 4, "aay");

   (7, 5, "aa2"); (7, 6, "abp"); (8, 1, "aak"); (8, 2, "aa4"); (8, 3, "abb");

   (8, 4, "aa7"); (8, 5, "aar"); (8, 6, "aal"); (9, 1, "ab3"); (9, 2, "aba");

   (9, 3, "abl"); (9, 4, "abw"); (9, 5, "aag"); (9, 6, "aab");

   (10, 1, "aaa"); (10, 2, "aa6"); (10, 3, "abp"); (10, 4, "aaj");

   (10, 5, "abz"); (10, 6, "abi"); (11, 1, "ab6"); (11, 2, "abb");

   (11, 3, "aak"); (11, 4, "aan"); (11, 5, "abn"); (11, 6, "abu");

   (12, 1, "abv"); (12, 2, "abo"); (12, 3, "ab3"); (12, 4, "abd");

   (12, 5, "aag"); (12, 6, "abl")]

   val result : (int * int * string) list =

  [(1, 0, "abc"); (1, 1, "aar"); (1, 2, "abi"); (1, 3, "abh"); (1, 4, "abq");

   (1, 5, "abb"); (2, 0, "aag"); (2, 1, "aa6"); (2, 2, "ab4"); (2, 3, "aab");

   (2, 4, "abr"); (2, 5, "aao"); (3, 0, "aa7"); (3, 1, "abw"); (3, 2, "abg");

   (3, 3, "abn"); (3, 4, "aak"); (3, 5, "abz"); (4, 0, "ab3"); (4, 1, "aaj");

   (4, 2, "aae"); (4, 3, "aai"); (4, 4, "aav"); (4, 5, "abz"); (5, 0, "abk");

   (5, 1, "abx"); (5, 2, "aas"); (5, 3, "abj"); (5, 4, "aak"); (5, 5, "abp");

   (6, 0, "aaq"); (6, 1, "abk"); (6, 2, "aay"); (6, 3, "abv"); (6, 4, "abg");

   (6, 5, "abv"); (7, 0, "ab3"); (7, 1, "aad"); (7, 2, "aaw"); (7, 3, "aay");

   (7, 4, "aa2"); (7, 5, "abp"); (8, 0, "aak"); (8, 1, "aa4"); (8, 2, "abb");

   (8, 3, "aa7"); (8, 4, "aar"); (8, 5, "aal"); (9, 0, "ab3"); (9, 1, "aba");

   (9, 2, "abl"); (9, 3, "abw"); (9, 4, "aag"); (9, 5, "aab");

   (10, 0, "aaa"); (10, 1, "aa6"); (10, 2, "abp"); (10, 3, "aaj");

   (10, 4, "abz"); (10, 5, "abi"); (11, 0, "ab6"); (11, 1, "abb");

   (11, 2, "aak"); (11, 3, "aan"); (11, 4, "abn"); (11, 5, "abu");

   (12, 0, "abv"); (12, 1, "abo"); (12, 2, "ab3"); (12, 3, "abd");

   (12, 4, "aag"); (12, 5, "abl")]

```

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (4) [(1,1,"abc"); (1,2,"aar"); (1,3,"abi"); (1,4,"abh"); (1,5,"abq"); (1,6,"abb"); (2,1,"aag"); (2,2,"aa6"); (2,3,"ab4"); (2,4,"aab"); (2,5,"abr"); (2,6,"aao"); (3,1,"aa7"); (3,2,"abw"); (3,3,"abg"); (3,4,"abn"); (3,5,"aak"); (3,6,"abz"); (4,1,"ab3"); (4,2,"aaj"); (4,3,"aae"); (4,4,"aai"); (4,5,"aav"); (4,6,"abz"); (5,1,"abk"); (5,2,"abx"); (5,3,"aas"); (5,4,"abj"); (5,5,"aak"); (5,6,"abp"); (6,1,"aaq"); (6,2,"abk"); (6,3,"aay"); (6,4,"abv"); (6,5,"abg"); (6,6,"abv"); (7,1,"ab3"); (7,2,"aad"); (7,3,"aaw"); (7,4,"aay"); (7,5,"aa2"); (7,6,"abp"); (8,1,"aak"); (8,2,"aa4"); (8,3,"abb"); (8,4,"aa7"); (8,5,"aar"); (8,6,"aal"); (9,1,"ab3"); (9,2,"aba"); (9,3,"abl"); (9,4,"abw"); (9,5,"aag"); (9,6,"aab"); (10,1,"aaa"); (10,2,"aa6"); (10,3,"abp"); (10,4,"aaj"); (10,5,"abz"); (10,6,"abi"); (11,1,"ab6"); (11,2,"abb"); (11,3,"aak"); (11,4,"aan"); (11,5,"abn"); (11,6,"abu"); (12,1,"abv"); (12,2,"abo"); (12,3,"ab3"); (12,4,"abd"); (12,5,"aag"); (12,6,"abl")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abc"); (1,2,"aar"); (1,3,"abi"); (1,4,"abq"); (1,5,"abb"); (2,1,"aag"); (2,2,"aa6"); (2,3,"ab4"); (2,4,"abr"); (2,5,"aao"); (3,1,"aa7"); (3,2,"abw"); (3,3,"abg"); (3,4,"aak"); (3,5,"abz"); (4,1,"ab3"); (4,2,"aaj"); (4,3,"aae"); (4,4,"aav"); (4,5,"abz"); (5,1,"abk"); (5,2,"abx"); (5,3,"aas"); (5,4,"aak"); (5,5,"abp"); (6,1,"aaq"); (6,2,"abk"); (6,3,"aay"); (6,4,"abg"); (6,5,"abv"); (7,1,"ab3"); (7,2,"aad"); (7,3,"aaw"); (7,4,"aa2"); (7,5,"abp"); (8,1,"aak"); (8,2,"aa4"); (8,3,"abb"); (8,4,"aar"); (8,5,"aal"); (9,1,"ab3"); (9,2,"aba"); (9,3,"abl"); (9,4,"aag"); (9,5,"aab"); (10,1,"aaa"); (10,2,"aa6"); (10,3,"abp"); (10,4,"abz"); (10,5,"abi"); (11,1,"ab6"); (11,2,"abb"); (11,3,"aak"); (11,4,"abn"); (11,5,"abu"); (12,1,"abv"); (12,2,"abo"); (12,3,"ab3"); (12,4,"aag"); (12,5,"abl")]
        ```
        

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (3) [(1,1,"abc"); (1,2,"aar"); (1,3,"abi"); (1,4,"abh"); (1,5,"abq"); (1,6,"abb"); (2,1,"aag"); (2,2,"aa6"); (2,3,"ab4"); (2,4,"aab"); (2,5,"abr"); (2,6,"aao"); (3,1,"aa7"); (3,2,"abw"); (3,3,"abg"); (3,4,"abn"); (3,5,"aak"); (3,6,"abz"); (4,1,"ab3"); (4,2,"aaj"); (4,3,"aae"); (4,4,"aai"); (4,5,"aav"); (4,6,"abz"); (5,1,"abk"); (5,2,"abx"); (5,3,"aas"); (5,4,"abj"); (5,5,"aak"); (5,6,"abp"); (6,1,"aaq"); (6,2,"abk"); (6,3,"aay"); (6,4,"abv"); (6,5,"abg"); (6,6,"abv"); (7,1,"ab3"); (7,2,"aad"); (7,3,"aaw"); (7,4,"aay"); (7,5,"aa2"); (7,6,"abp"); (8,1,"aak"); (8,2,"aa4"); (8,3,"abb"); (8,4,"aa7"); (8,5,"aar"); (8,6,"aal"); (9,1,"ab3"); (9,2,"aba"); (9,3,"abl"); (9,4,"abw"); (9,5,"aag"); (9,6,"aab"); (10,1,"aaa"); (10,2,"aa6"); (10,3,"abp"); (10,4,"aaj"); (10,5,"abz"); (10,6,"abi"); (11,1,"ab6"); (11,2,"abb"); (11,3,"aak"); (11,4,"aan"); (11,5,"abn"); (11,6,"abu"); (12,1,"abv"); (12,2,"abo"); (12,3,"ab3"); (12,4,"abd"); (12,5,"aag"); (12,6,"abl")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abc"); (1,2,"aar"); (1,3,"abh"); (1,4,"abq"); (1,5,"abb"); (2,1,"aag"); (2,2,"aa6"); (2,3,"aab"); (2,4,"abr"); (2,5,"aao"); (3,1,"aa7"); (3,2,"abw"); (3,3,"abn"); (3,4,"aak"); (3,5,"abz"); (4,1,"ab3"); (4,2,"aaj"); (4,3,"aai"); (4,4,"aav"); (4,5,"abz"); (5,1,"abk"); (5,2,"abx"); (5,3,"abj"); (5,4,"aak"); (5,5,"abp"); (6,1,"aaq"); (6,2,"abk"); (6,3,"abv"); (6,4,"abg"); (6,5,"abv"); (7,1,"ab3"); (7,2,"aad"); (7,3,"aay"); (7,4,"aa2"); (7,5,"abp"); (8,1,"aak"); (8,2,"aa4"); (8,3,"aa7"); (8,4,"aar"); (8,5,"aal"); (9,1,"ab3"); (9,2,"aba"); (9,3,"abw"); (9,4,"aag"); (9,5,"aab"); (10,1,"aaa"); (10,2,"aa6"); (10,3,"aaj"); (10,4,"abz"); (10,5,"abi"); (11,1,"ab6"); (11,2,"abb"); (11,3,"aan"); (11,4,"abn"); (11,5,"abu"); (12,1,"abv"); (12,2,"abo"); (12,3,"abd"); (12,4,"aag"); (12,5,"abl")]
        ```
        

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (7) [(1,1,"abc"); (1,2,"aar"); (1,3,"abi"); (1,4,"abh"); (1,5,"abq"); (1,6,"abb"); (2,1,"aag"); (2,2,"aa6"); (2,3,"ab4"); (2,4,"aab"); (2,5,"abr"); (2,6,"aao"); (3,1,"aa7"); (3,2,"abw"); (3,3,"abg"); (3,4,"abn"); (3,5,"aak"); (3,6,"abz"); (4,1,"ab3"); (4,2,"aaj"); (4,3,"aae"); (4,4,"aai"); (4,5,"aav"); (4,6,"abz"); (5,1,"abk"); (5,2,"abx"); (5,3,"aas"); (5,4,"abj"); (5,5,"aak"); (5,6,"abp"); (6,1,"aaq"); (6,2,"abk"); (6,3,"aay"); (6,4,"abv"); (6,5,"abg"); (6,6,"abv"); (7,1,"ab3"); (7,2,"aad"); (7,3,"aaw"); (7,4,"aay"); (7,5,"aa2"); (7,6,"abp"); (8,1,"aak"); (8,2,"aa4"); (8,3,"abb"); (8,4,"aa7"); (8,5,"aar"); (8,6,"aal"); (9,1,"ab3"); (9,2,"aba"); (9,3,"abl"); (9,4,"abw"); (9,5,"aag"); (9,6,"aab"); (10,1,"aaa"); (10,2,"aa6"); (10,3,"abp"); (10,4,"aaj"); (10,5,"abz"); (10,6,"abi"); (11,1,"ab6"); (11,2,"abb"); (11,3,"aak"); (11,4,"aan"); (11,5,"abn"); (11,6,"abu"); (12,1,"abv"); (12,2,"abo"); (12,3,"ab3"); (12,4,"abd"); (12,5,"aag"); (12,6,"abl")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abc"); (1,2,"aar"); (1,3,"abi"); (1,4,"abh"); (1,5,"abq"); (1,6,"abb"); (2,1,"aag"); (2,2,"aa6"); (2,3,"ab4"); (2,4,"aab"); (2,5,"abr"); (2,6,"aao"); (3,1,"aa7"); (3,2,"abw"); (3,3,"abg"); (3,4,"abn"); (3,5,"aak"); (3,6,"abz"); (4,1,"ab3"); (4,2,"aaj"); (4,3,"aae"); (4,4,"aai"); (4,5,"aav"); (4,6,"abz"); (5,1,"abk"); (5,2,"abx"); (5,3,"aas"); (5,4,"abj"); (5,5,"aak"); (5,6,"abp"); (6,1,"aaq"); (6,2,"abk"); (6,3,"aay"); (6,4,"abv"); (6,5,"abg"); (6,6,"abv"); (7,1,"ab3"); (7,2,"aad"); (7,3,"aaw"); (7,4,"aay"); (7,5,"aa2"); (7,6,"abp"); (8,1,"aak"); (8,2,"aa4"); (8,3,"abb"); (8,4,"aa7"); (8,5,"aar"); (8,6,"aal"); (9,1,"ab3"); (9,2,"aba"); (9,3,"abl"); (9,4,"abw"); (9,5,"aag"); (9,6,"aab"); (10,1,"aaa"); (10,2,"aa6"); (10,3,"abp"); (10,4,"aaj"); (10,5,"abz"); (10,6,"abi"); (11,1,"ab6"); (11,2,"abb"); (11,3,"aak"); (11,4,"aan"); (11,5,"abn"); (11,6,"abu"); (12,1,"abv"); (12,2,"abo"); (12,3,"ab3"); (12,4,"abd"); (12,5,"aag"); (12,6,"abl")]
        ```
        

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (3) [(1,1,"abl"); (1,2,"aao"); (1,3,"aag"); (1,4,"aa2"); (1,5,"aa7"); (1,6,"abg"); (1,7,"abx"); (2,1,"abb"); (2,2,"aac"); (2,3,"abj"); (2,4,"abw"); (2,5,"aaz"); (2,6,"aa7"); (2,7,"aav"); (3,1,"ab3"); (3,2,"aaj"); (3,3,"abh"); (3,4,"aa3"); (3,5,"abc"); (3,6,"aa5"); (3,7,"aab"); (4,1,"aa2"); (4,2,"aas"); (4,3,"abf"); (4,4,"abb"); (4,5,"ab7"); (4,6,"ab3"); (4,7,"abr"); (5,1,"aao"); (5,2,"abq"); (5,3,"aao"); (5,4,"aa5"); (5,5,"aar"); (5,6,"abe"); (5,7,"aby"); (6,1,"ab6"); (6,2,"abg"); (6,3,"abn"); (6,4,"aae"); (6,5,"aaj"); (6,6,"aau"); (6,7,"abz"); (7,1,"aak"); (7,2,"aae"); (7,3,"aaw"); (7,4,"abz"); (7,5,"abg"); (7,6,"abh"); (7,7,"aax"); (8,1,"ab5"); (8,2,"abs"); (8,3,"abc"); (8,4,"abr"); (8,5,"aa4"); (8,6,"abd"); (8,7,"aaj"); (9,1,"abt"); (9,2,"abf"); (9,3,"aan"); (9,4,"aak"); (9,5,"aam"); (9,6,"aaf"); (9,7,"aaw"); (10,1,"abh"); (10,2,"aaz"); (10,3,"abq"); (10,4,"aby"); (10,5,"abq"); (10,6,"aao"); (10,7,"abv")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abl"); (1,2,"aao"); (1,3,"aa2"); (1,4,"aa7"); (1,5,"abg"); (1,6,"abx"); (2,1,"abb"); (2,2,"aac"); (2,3,"abw"); (2,4,"aaz"); (2,5,"aa7"); (2,6,"aav"); (3,1,"ab3"); (3,2,"aaj"); (3,3,"aa3"); (3,4,"abc"); (3,5,"aa5"); (3,6,"aab"); (4,1,"aa2"); (4,2,"aas"); (4,3,"abb"); (4,4,"ab7"); (4,5,"ab3"); (4,6,"abr"); (5,1,"aao"); (5,2,"abq"); (5,3,"aa5"); (5,4,"aar"); (5,5,"abe"); (5,6,"aby"); (6,1,"ab6"); (6,2,"abg"); (6,3,"aae"); (6,4,"aaj"); (6,5,"aau"); (6,6,"abz"); (7,1,"aak"); (7,2,"aae"); (7,3,"abz"); (7,4,"abg"); (7,5,"abh"); (7,6,"aax"); (8,1,"ab5"); (8,2,"abs"); (8,3,"abr"); (8,4,"aa4"); (8,5,"abd"); (8,6,"aaj"); (9,1,"abt"); (9,2,"abf"); (9,3,"aak"); (9,4,"aam"); (9,5,"aaf"); (9,6,"aaw"); (10,1,"abh"); (10,2,"aaz"); (10,3,"aby"); (10,4,"abq"); (10,5,"aao"); (10,6,"abv")]
        ```
        

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (6) [(1,1,"abl"); (1,2,"aao"); (1,3,"aag"); (1,4,"aa2"); (1,5,"aa7"); (1,6,"abg"); (1,7,"abx"); (2,1,"abb"); (2,2,"aac"); (2,3,"abj"); (2,4,"abw"); (2,5,"aaz"); (2,6,"aa7"); (2,7,"aav"); (3,1,"ab3"); (3,2,"aaj"); (3,3,"abh"); (3,4,"aa3"); (3,5,"abc"); (3,6,"aa5"); (3,7,"aab"); (4,1,"aa2"); (4,2,"aas"); (4,3,"abf"); (4,4,"abb"); (4,5,"ab7"); (4,6,"ab3"); (4,7,"abr"); (5,1,"aao"); (5,2,"abq"); (5,3,"aao"); (5,4,"aa5"); (5,5,"aar"); (5,6,"abe"); (5,7,"aby"); (6,1,"ab6"); (6,2,"abg"); (6,3,"abn"); (6,4,"aae"); (6,5,"aaj"); (6,6,"aau"); (6,7,"abz"); (7,1,"aak"); (7,2,"aae"); (7,3,"aaw"); (7,4,"abz"); (7,5,"abg"); (7,6,"abh"); (7,7,"aax"); (8,1,"ab5"); (8,2,"abs"); (8,3,"abc"); (8,4,"abr"); (8,5,"aa4"); (8,6,"abd"); (8,7,"aaj"); (9,1,"abt"); (9,2,"abf"); (9,3,"aan"); (9,4,"aak"); (9,5,"aam"); (9,6,"aaf"); (9,7,"aaw"); (10,1,"abh"); (10,2,"aaz"); (10,3,"abq"); (10,4,"aby"); (10,5,"abq"); (10,6,"aao"); (10,7,"abv")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abl"); (1,2,"aao"); (1,3,"aag"); (1,4,"aa2"); (1,5,"aa7"); (1,6,"abx"); (2,1,"abb"); (2,2,"aac"); (2,3,"abj"); (2,4,"abw"); (2,5,"aaz"); (2,6,"aav"); (3,1,"ab3"); (3,2,"aaj"); (3,3,"abh"); (3,4,"aa3"); (3,5,"abc"); (3,6,"aab"); (4,1,"aa2"); (4,2,"aas"); (4,3,"abf"); (4,4,"abb"); (4,5,"ab7"); (4,6,"abr"); (5,1,"aao"); (5,2,"abq"); (5,3,"aao"); (5,4,"aa5"); (5,5,"aar"); (5,6,"aby"); (6,1,"ab6"); (6,2,"abg"); (6,3,"abn"); (6,4,"aae"); (6,5,"aaj"); (6,6,"abz"); (7,1,"aak"); (7,2,"aae"); (7,3,"aaw"); (7,4,"abz"); (7,5,"abg"); (7,6,"aax"); (8,1,"ab5"); (8,2,"abs"); (8,3,"abc"); (8,4,"abr"); (8,5,"aa4"); (8,6,"aaj"); (9,1,"abt"); (9,2,"abf"); (9,3,"aan"); (9,4,"aak"); (9,5,"aam"); (9,6,"aaw"); (10,1,"abh"); (10,2,"aaz"); (10,3,"abq"); (10,4,"aby"); (10,5,"abq"); (10,6,"abv")]
        ```
        

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (7) [(1,1,"abl"); (1,2,"aao"); (1,3,"aag"); (1,4,"aa2"); (1,5,"aa7"); (1,6,"abg"); (1,7,"abx"); (2,1,"abb"); (2,2,"aac"); (2,3,"abj"); (2,4,"abw"); (2,5,"aaz"); (2,6,"aa7"); (2,7,"aav"); (3,1,"ab3"); (3,2,"aaj"); (3,3,"abh"); (3,4,"aa3"); (3,5,"abc"); (3,6,"aa5"); (3,7,"aab"); (4,1,"aa2"); (4,2,"aas"); (4,3,"abf"); (4,4,"abb"); (4,5,"ab7"); (4,6,"ab3"); (4,7,"abr"); (5,1,"aao"); (5,2,"abq"); (5,3,"aao"); (5,4,"aa5"); (5,5,"aar"); (5,6,"abe"); (5,7,"aby"); (6,1,"ab6"); (6,2,"abg"); (6,3,"abn"); (6,4,"aae"); (6,5,"aaj"); (6,6,"aau"); (6,7,"abz"); (7,1,"aak"); (7,2,"aae"); (7,3,"aaw"); (7,4,"abz"); (7,5,"abg"); (7,6,"abh"); (7,7,"aax"); (8,1,"ab5"); (8,2,"abs"); (8,3,"abc"); (8,4,"abr"); (8,5,"aa4"); (8,6,"abd"); (8,7,"aaj"); (9,1,"abt"); (9,2,"abf"); (9,3,"aan"); (9,4,"aak"); (9,5,"aam"); (9,6,"aaf"); (9,7,"aaw"); (10,1,"abh"); (10,2,"aaz"); (10,3,"abq"); (10,4,"aby"); (10,5,"abq"); (10,6,"aao"); (10,7,"abv")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abl"); (1,2,"aao"); (1,3,"aag"); (1,4,"aa2"); (1,5,"aa7"); (1,6,"abg"); (2,1,"abb"); (2,2,"aac"); (2,3,"abj"); (2,4,"abw"); (2,5,"aaz"); (2,6,"aa7"); (3,1,"ab3"); (3,2,"aaj"); (3,3,"abh"); (3,4,"aa3"); (3,5,"abc"); (3,6,"aa5"); (4,1,"aa2"); (4,2,"aas"); (4,3,"abf"); (4,4,"abb"); (4,5,"ab7"); (4,6,"ab3"); (5,1,"aao"); (5,2,"abq"); (5,3,"aao"); (5,4,"aa5"); (5,5,"aar"); (5,6,"abe"); (6,1,"ab6"); (6,2,"abg"); (6,3,"abn"); (6,4,"aae"); (6,5,"aaj"); (6,6,"aau"); (7,1,"aak"); (7,2,"aae"); (7,3,"aaw"); (7,4,"abz"); (7,5,"abg"); (7,6,"abh"); (8,1,"ab5"); (8,2,"abs"); (8,3,"abc"); (8,4,"abr"); (8,5,"aa4"); (8,6,"abd"); (9,1,"abt"); (9,2,"abf"); (9,3,"aan"); (9,4,"aak"); (9,5,"aam"); (9,6,"aaf"); (10,1,"abh"); (10,2,"aaz"); (10,3,"abq"); (10,4,"aby"); (10,5,"abq"); (10,6,"aao")]
        ```
        

+  _0_ / _0.08_ : Fail: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (0) [(1,1,"abl"); (1,2,"aao"); (1,3,"aag"); (1,4,"aa2"); (1,5,"aa7"); (1,6,"abg"); (1,7,"abx"); (2,1,"abb"); (2,2,"aac"); (2,3,"abj"); (2,4,"abw"); (2,5,"aaz"); (2,6,"aa7"); (2,7,"aav"); (3,1,"ab3"); (3,2,"aaj"); (3,3,"abh"); (3,4,"aa3"); (3,5,"abc"); (3,6,"aa5"); (3,7,"aab"); (4,1,"aa2"); (4,2,"aas"); (4,3,"abf"); (4,4,"abb"); (4,5,"ab7"); (4,6,"ab3"); (4,7,"abr"); (5,1,"aao"); (5,2,"abq"); (5,3,"aao"); (5,4,"aa5"); (5,5,"aar"); (5,6,"abe"); (5,7,"aby"); (6,1,"ab6"); (6,2,"abg"); (6,3,"abn"); (6,4,"aae"); (6,5,"aaj"); (6,6,"aau"); (6,7,"abz"); (7,1,"aak"); (7,2,"aae"); (7,3,"aaw"); (7,4,"abz"); (7,5,"abg"); (7,6,"abh"); (7,7,"aax"); (8,1,"ab5"); (8,2,"abs"); (8,3,"abc"); (8,4,"abr"); (8,5,"aa4"); (8,6,"abd"); (8,7,"aaj"); (9,1,"abt"); (9,2,"abf"); (9,3,"aan"); (9,4,"aak"); (9,5,"aam"); (9,6,"aaf"); (9,7,"aaw"); (10,1,"abh"); (10,2,"aaz"); (10,3,"abq"); (10,4,"aby"); (10,5,"abq"); (10,6,"aao"); (10,7,"abv")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abl"); (1,2,"aao"); (1,3,"aag"); (1,4,"aa2"); (1,5,"aa7"); (1,6,"abg"); (1,7,"abx"); (2,1,"abb"); (2,2,"aac"); (2,3,"abj"); (2,4,"abw"); (2,5,"aaz"); (2,6,"aa7"); (2,7,"aav"); (3,1,"ab3"); (3,2,"aaj"); (3,3,"abh"); (3,4,"aa3"); (3,5,"abc"); (3,6,"aa5"); (3,7,"aab"); (4,1,"aa2"); (4,2,"aas"); (4,3,"abf"); (4,4,"abb"); (4,5,"ab7"); (4,6,"ab3"); (4,7,"abr"); (5,1,"aao"); (5,2,"abq"); (5,3,"aao"); (5,4,"aa5"); (5,5,"aar"); (5,6,"abe"); (5,7,"aby"); (6,1,"ab6"); (6,2,"abg"); (6,3,"abn"); (6,4,"aae"); (6,5,"aaj"); (6,6,"aau"); (6,7,"abz"); (7,1,"aak"); (7,2,"aae"); (7,3,"aaw"); (7,4,"abz"); (7,5,"abg"); (7,6,"abh"); (7,7,"aax"); (8,1,"ab5"); (8,2,"abs"); (8,3,"abc"); (8,4,"abr"); (8,5,"aa4"); (8,6,"abd"); (8,7,"aaj"); (9,1,"abt"); (9,2,"abf"); (9,3,"aan"); (9,4,"aak"); (9,5,"aam"); (9,6,"aaf"); (9,7,"aaw"); (10,1,"abh"); (10,2,"aaz"); (10,3,"abq"); (10,4,"aby"); (10,5,"abq"); (10,6,"aao"); (10,7,"abv")]
        ```
        

FAILED with output:

```      val expected : (int * int * string) list =

  [(1, 1, "abl"); (1, 2, "aao"); (1, 3, "aag"); (1, 4, "aa2"); (1, 5, "aa7");

   (1, 6, "abg"); (1, 7, "abx"); (2, 1, "abb"); (2, 2, "aac"); (2, 3, "abj");

   (2, 4, "abw"); (2, 5, "aaz"); (2, 6, "aa7"); (2, 7, "aav"); (3, 1, "ab3");

   (3, 2, "aaj"); (3, 3, "abh"); (3, 4, "aa3"); (3, 5, "abc"); (3, 6, "aa5");

   (3, 7, "aab"); (4, 1, "aa2"); (4, 2, "aas"); (4, 3, "abf"); (4, 4, "abb");

   (4, 5, "ab7"); (4, 6, "ab3"); (4, 7, "abr"); (5, 1, "aao"); (5, 2, "abq");

   (5, 3, "aao"); (5, 4, "aa5"); (5, 5, "aar"); (5, 6, "abe"); (5, 7, "aby");

   (6, 1, "ab6"); (6, 2, "abg"); (6, 3, "abn"); (6, 4, "aae"); (6, 5, "aaj");

   (6, 6, "aau"); (6, 7, "abz"); (7, 1, "aak"); (7, 2, "aae"); (7, 3, "aaw");

   (7, 4, "abz"); (7, 5, "abg"); (7, 6, "abh"); (7, 7, "aax"); (8, 1, "ab5");

   (8, 2, "abs"); (8, 3, "abc"); (8, 4, "abr"); (8, 5, "aa4"); (8, 6, "abd");

   (8, 7, "aaj"); (9, 1, "abt"); (9, 2, "abf"); (9, 3, "aan"); (9, 4, "aak");

   (9, 5, "aam"); (9, 6, "aaf"); (9, 7, "aaw"); (10, 1, "abh");

   (10, 2, "aaz"); (10, 3, "abq"); (10, 4, "aby"); (10, 5, "abq");

   (10, 6, "aao"); (10, 7, "abv")]

   val result : (int * int * string) list =

  [(1, 0, "abl"); (1, 1, "aao"); (1, 2, "aag"); (1, 3, "aa2"); (1, 4, "aa7");

   (1, 5, "abg"); (1, 6, "abx"); (2, 0, "abb"); (2, 1, "aac"); (2, 2, "abj");

   (2, 3, "abw"); (2, 4, "aaz"); (2, 5, "aa7"); (2, 6, "aav"); (3, 0, "ab3");

   (3, 1, "aaj"); (3, 2, "abh"); (3, 3, "aa3"); (3, 4, "abc"); (3, 5, "aa5");

   (3, 6, "aab"); (4, 0, "aa2"); (4, 1, "aas"); (4, 2, "abf"); (4, 3, "abb");

   (4, 4, "ab7"); (4, 5, "ab3"); (4, 6, "abr"); (5, 0, "aao"); (5, 1, "abq");

   (5, 2, "aao"); (5, 3, "aa5"); (5, 4, "aar"); (5, 5, "abe"); (5, 6, "aby");

   (6, 0, "ab6"); (6, 1, "abg"); (6, 2, "abn"); (6, 3, "aae"); (6, 4, "aaj");

   (6, 5, "aau"); (6, 6, "abz"); (7, 0, "aak"); (7, 1, "aae"); (7, 2, "aaw");

   (7, 3, "abz"); (7, 4, "abg"); (7, 5, "abh"); (7, 6, "aax"); (8, 0, "ab5");

   (8, 1, "abs"); (8, 2, "abc"); (8, 3, "abr"); (8, 4, "aa4"); (8, 5, "abd");

   (8, 6, "aaj"); (9, 0, "abt"); (9, 1, "abf"); (9, 2, "aan"); (9, 3, "aak");

   (9, 4, "aam"); (9, 5, "aaf"); (9, 6, "aaw"); (10, 0, "abh");

   (10, 1, "aaz"); (10, 2, "abq"); (10, 3, "aby"); (10, 4, "abq");

   (10, 5, "aao"); (10, 6, "abv")]

```

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (7) [(1,1,"abl"); (1,2,"aao"); (1,3,"aag"); (1,4,"aa2"); (1,5,"aa7"); (1,6,"abg"); (1,7,"abx"); (2,1,"abb"); (2,2,"aac"); (2,3,"abj"); (2,4,"abw"); (2,5,"aaz"); (2,6,"aa7"); (2,7,"aav"); (3,1,"ab3"); (3,2,"aaj"); (3,3,"abh"); (3,4,"aa3"); (3,5,"abc"); (3,6,"aa5"); (3,7,"aab"); (4,1,"aa2"); (4,2,"aas"); (4,3,"abf"); (4,4,"abb"); (4,5,"ab7"); (4,6,"ab3"); (4,7,"abr"); (5,1,"aao"); (5,2,"abq"); (5,3,"aao"); (5,4,"aa5"); (5,5,"aar"); (5,6,"abe"); (5,7,"aby"); (6,1,"ab6"); (6,2,"abg"); (6,3,"abn"); (6,4,"aae"); (6,5,"aaj"); (6,6,"aau"); (6,7,"abz"); (7,1,"aak"); (7,2,"aae"); (7,3,"aaw"); (7,4,"abz"); (7,5,"abg"); (7,6,"abh"); (7,7,"aax"); (8,1,"ab5"); (8,2,"abs"); (8,3,"abc"); (8,4,"abr"); (8,5,"aa4"); (8,6,"abd"); (8,7,"aaj"); (9,1,"abt"); (9,2,"abf"); (9,3,"aan"); (9,4,"aak"); (9,5,"aam"); (9,6,"aaf"); (9,7,"aaw"); (10,1,"abh"); (10,2,"aaz"); (10,3,"abq"); (10,4,"aby"); (10,5,"abq"); (10,6,"aao"); (10,7,"abv")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abl"); (1,2,"aao"); (1,3,"aag"); (1,4,"aa2"); (1,5,"aa7"); (1,6,"abg"); (2,1,"abb"); (2,2,"aac"); (2,3,"abj"); (2,4,"abw"); (2,5,"aaz"); (2,6,"aa7"); (3,1,"ab3"); (3,2,"aaj"); (3,3,"abh"); (3,4,"aa3"); (3,5,"abc"); (3,6,"aa5"); (4,1,"aa2"); (4,2,"aas"); (4,3,"abf"); (4,4,"abb"); (4,5,"ab7"); (4,6,"ab3"); (5,1,"aao"); (5,2,"abq"); (5,3,"aao"); (5,4,"aa5"); (5,5,"aar"); (5,6,"abe"); (6,1,"ab6"); (6,2,"abg"); (6,3,"abn"); (6,4,"aae"); (6,5,"aaj"); (6,6,"aau"); (7,1,"aak"); (7,2,"aae"); (7,3,"aaw"); (7,4,"abz"); (7,5,"abg"); (7,6,"abh"); (8,1,"ab5"); (8,2,"abs"); (8,3,"abc"); (8,4,"abr"); (8,5,"aa4"); (8,6,"abd"); (9,1,"abt"); (9,2,"abf"); (9,3,"aan"); (9,4,"aak"); (9,5,"aam"); (9,6,"aaf"); (10,1,"abh"); (10,2,"aaz"); (10,3,"abq"); (10,4,"aby"); (10,5,"abq"); (10,6,"aao")]
        ```
        

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (1) [(1,1,"abf"); (1,2,"aar"); (1,3,"abn"); (1,4,"abc"); (2,1,"ab7"); (2,2,"aa4"); (2,3,"aao"); (2,4,"ab2"); (3,1,"aak"); (3,2,"aal"); (3,3,"abc"); (3,4,"ab3"); (4,1,"abw"); (4,2,"aax"); (4,3,"abb"); (4,4,"aaz"); (5,1,"aa4"); (5,2,"abv"); (5,3,"abf"); (5,4,"aaa"); (6,1,"ab6"); (6,2,"aaz"); (6,3,"aad"); (6,4,"abp"); (7,1,"abj"); (7,2,"abc"); (7,3,"abl"); (7,4,"aal"); (8,1,"aa5"); (8,2,"aas"); (8,3,"abd"); (8,4,"aaa"); (9,1,"abv"); (9,2,"aad"); (9,3,"abd"); (9,4,"aa7"); (10,1,"aby"); (10,2,"aae"); (10,3,"aak"); (10,4,"ab7"); (11,1,"aaq"); (11,2,"aak"); (11,3,"aan"); (11,4,"aa7"); (12,1,"aa2"); (12,2,"ab4"); (12,3,"aae"); (12,4,"abo")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aar"); (1,2,"abn"); (1,3,"abc"); (2,1,"aa4"); (2,2,"aao"); (2,3,"ab2"); (3,1,"aal"); (3,2,"abc"); (3,3,"ab3"); (4,1,"aax"); (4,2,"abb"); (4,3,"aaz"); (5,1,"abv"); (5,2,"abf"); (5,3,"aaa"); (6,1,"aaz"); (6,2,"aad"); (6,3,"abp"); (7,1,"abc"); (7,2,"abl"); (7,3,"aal"); (8,1,"aas"); (8,2,"abd"); (8,3,"aaa"); (9,1,"aad"); (9,2,"abd"); (9,3,"aa7"); (10,1,"aae"); (10,2,"aak"); (10,3,"ab7"); (11,1,"aak"); (11,2,"aan"); (11,3,"aa7"); (12,1,"ab4"); (12,2,"aae"); (12,3,"abo")]
        ```
        

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (5) [(1,1,"abf"); (1,2,"aar"); (1,3,"abn"); (1,4,"abc"); (2,1,"ab7"); (2,2,"aa4"); (2,3,"aao"); (2,4,"ab2"); (3,1,"aak"); (3,2,"aal"); (3,3,"abc"); (3,4,"ab3"); (4,1,"abw"); (4,2,"aax"); (4,3,"abb"); (4,4,"aaz"); (5,1,"aa4"); (5,2,"abv"); (5,3,"abf"); (5,4,"aaa"); (6,1,"ab6"); (6,2,"aaz"); (6,3,"aad"); (6,4,"abp"); (7,1,"abj"); (7,2,"abc"); (7,3,"abl"); (7,4,"aal"); (8,1,"aa5"); (8,2,"aas"); (8,3,"abd"); (8,4,"aaa"); (9,1,"abv"); (9,2,"aad"); (9,3,"abd"); (9,4,"aa7"); (10,1,"aby"); (10,2,"aae"); (10,3,"aak"); (10,4,"ab7"); (11,1,"aaq"); (11,2,"aak"); (11,3,"aan"); (11,4,"aa7"); (12,1,"aa2"); (12,2,"ab4"); (12,3,"aae"); (12,4,"abo")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abf"); (1,2,"aar"); (1,3,"abn"); (1,4,"abc"); (2,1,"ab7"); (2,2,"aa4"); (2,3,"aao"); (2,4,"ab2"); (3,1,"aak"); (3,2,"aal"); (3,3,"abc"); (3,4,"ab3"); (4,1,"abw"); (4,2,"aax"); (4,3,"abb"); (4,4,"aaz"); (5,1,"aa4"); (5,2,"abv"); (5,3,"abf"); (5,4,"aaa"); (6,1,"ab6"); (6,2,"aaz"); (6,3,"aad"); (6,4,"abp"); (7,1,"abj"); (7,2,"abc"); (7,3,"abl"); (7,4,"aal"); (8,1,"aa5"); (8,2,"aas"); (8,3,"abd"); (8,4,"aaa"); (9,1,"abv"); (9,2,"aad"); (9,3,"abd"); (9,4,"aa7"); (10,1,"aby"); (10,2,"aae"); (10,3,"aak"); (10,4,"ab7"); (11,1,"aaq"); (11,2,"aak"); (11,3,"aan"); (11,4,"aa7"); (12,1,"aa2"); (12,2,"ab4"); (12,3,"aae"); (12,4,"abo")]
        ```
        

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (1) [(1,1,"abf"); (1,2,"aar"); (1,3,"abn"); (1,4,"abc"); (2,1,"ab7"); (2,2,"aa4"); (2,3,"aao"); (2,4,"ab2"); (3,1,"aak"); (3,2,"aal"); (3,3,"abc"); (3,4,"ab3"); (4,1,"abw"); (4,2,"aax"); (4,3,"abb"); (4,4,"aaz"); (5,1,"aa4"); (5,2,"abv"); (5,3,"abf"); (5,4,"aaa"); (6,1,"ab6"); (6,2,"aaz"); (6,3,"aad"); (6,4,"abp"); (7,1,"abj"); (7,2,"abc"); (7,3,"abl"); (7,4,"aal"); (8,1,"aa5"); (8,2,"aas"); (8,3,"abd"); (8,4,"aaa"); (9,1,"abv"); (9,2,"aad"); (9,3,"abd"); (9,4,"aa7"); (10,1,"aby"); (10,2,"aae"); (10,3,"aak"); (10,4,"ab7"); (11,1,"aaq"); (11,2,"aak"); (11,3,"aan"); (11,4,"aa7"); (12,1,"aa2"); (12,2,"ab4"); (12,3,"aae"); (12,4,"abo")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aar"); (1,2,"abn"); (1,3,"abc"); (2,1,"aa4"); (2,2,"aao"); (2,3,"ab2"); (3,1,"aal"); (3,2,"abc"); (3,3,"ab3"); (4,1,"aax"); (4,2,"abb"); (4,3,"aaz"); (5,1,"abv"); (5,2,"abf"); (5,3,"aaa"); (6,1,"aaz"); (6,2,"aad"); (6,3,"abp"); (7,1,"abc"); (7,2,"abl"); (7,3,"aal"); (8,1,"aas"); (8,2,"abd"); (8,3,"aaa"); (9,1,"aad"); (9,2,"abd"); (9,3,"aa7"); (10,1,"aae"); (10,2,"aak"); (10,3,"ab7"); (11,1,"aak"); (11,2,"aan"); (11,3,"aa7"); (12,1,"ab4"); (12,2,"aae"); (12,3,"abo")]
        ```
        

+  _0_ / _0.08_ : Fail: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (0) [(1,1,"abf"); (1,2,"aar"); (1,3,"abn"); (1,4,"abc"); (2,1,"ab7"); (2,2,"aa4"); (2,3,"aao"); (2,4,"ab2"); (3,1,"aak"); (3,2,"aal"); (3,3,"abc"); (3,4,"ab3"); (4,1,"abw"); (4,2,"aax"); (4,3,"abb"); (4,4,"aaz"); (5,1,"aa4"); (5,2,"abv"); (5,3,"abf"); (5,4,"aaa"); (6,1,"ab6"); (6,2,"aaz"); (6,3,"aad"); (6,4,"abp"); (7,1,"abj"); (7,2,"abc"); (7,3,"abl"); (7,4,"aal"); (8,1,"aa5"); (8,2,"aas"); (8,3,"abd"); (8,4,"aaa"); (9,1,"abv"); (9,2,"aad"); (9,3,"abd"); (9,4,"aa7"); (10,1,"aby"); (10,2,"aae"); (10,3,"aak"); (10,4,"ab7"); (11,1,"aaq"); (11,2,"aak"); (11,3,"aan"); (11,4,"aa7"); (12,1,"aa2"); (12,2,"ab4"); (12,3,"aae"); (12,4,"abo")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abf"); (1,2,"aar"); (1,3,"abn"); (1,4,"abc"); (2,1,"ab7"); (2,2,"aa4"); (2,3,"aao"); (2,4,"ab2"); (3,1,"aak"); (3,2,"aal"); (3,3,"abc"); (3,4,"ab3"); (4,1,"abw"); (4,2,"aax"); (4,3,"abb"); (4,4,"aaz"); (5,1,"aa4"); (5,2,"abv"); (5,3,"abf"); (5,4,"aaa"); (6,1,"ab6"); (6,2,"aaz"); (6,3,"aad"); (6,4,"abp"); (7,1,"abj"); (7,2,"abc"); (7,3,"abl"); (7,4,"aal"); (8,1,"aa5"); (8,2,"aas"); (8,3,"abd"); (8,4,"aaa"); (9,1,"abv"); (9,2,"aad"); (9,3,"abd"); (9,4,"aa7"); (10,1,"aby"); (10,2,"aae"); (10,3,"aak"); (10,4,"ab7"); (11,1,"aaq"); (11,2,"aak"); (11,3,"aan"); (11,4,"aa7"); (12,1,"aa2"); (12,2,"ab4"); (12,3,"aae"); (12,4,"abo")]
        ```
        

FAILED with output:

```      val expected : (int * int * string) list =

  [(1, 1, "abf"); (1, 2, "aar"); (1, 3, "abn"); (1, 4, "abc"); (2, 1, "ab7");

   (2, 2, "aa4"); (2, 3, "aao"); (2, 4, "ab2"); (3, 1, "aak"); (3, 2, "aal");

   (3, 3, "abc"); (3, 4, "ab3"); (4, 1, "abw"); (4, 2, "aax"); (4, 3, "abb");

   (4, 4, "aaz"); (5, 1, "aa4"); (5, 2, "abv"); (5, 3, "abf"); (5, 4, "aaa");

   (6, 1, "ab6"); (6, 2, "aaz"); (6, 3, "aad"); (6, 4, "abp"); (7, 1, "abj");

   (7, 2, "abc"); (7, 3, "abl"); (7, 4, "aal"); (8, 1, "aa5"); (8, 2, "aas");

   (8, 3, "abd"); (8, 4, "aaa"); (9, 1, "abv"); (9, 2, "aad"); (9, 3, "abd");

   (9, 4, "aa7"); (10, 1, "aby"); (10, 2, "aae"); (10, 3, "aak");

   (10, 4, "ab7"); (11, 1, "aaq"); (11, 2, "aak"); (11, 3, "aan");

   (11, 4, "aa7"); (12, 1, "aa2"); (12, 2, "ab4"); (12, 3, "aae");

   (12, 4, "abo")]

   val result : (int * int * string) list =

  [(1, 0, "abf"); (1, 1, "aar"); (1, 2, "abn"); (1, 3, "abc"); (2, 0, "ab7");

   (2, 1, "aa4"); (2, 2, "aao"); (2, 3, "ab2"); (3, 0, "aak"); (3, 1, "aal");

   (3, 2, "abc"); (3, 3, "ab3"); (4, 0, "abw"); (4, 1, "aax"); (4, 2, "abb");

   (4, 3, "aaz"); (5, 0, "aa4"); (5, 1, "abv"); (5, 2, "abf"); (5, 3, "aaa");

   (6, 0, "ab6"); (6, 1, "aaz"); (6, 2, "aad"); (6, 3, "abp"); (7, 0, "abj");

   (7, 1, "abc"); (7, 2, "abl"); (7, 3, "aal"); (8, 0, "aa5"); (8, 1, "aas");

   (8, 2, "abd"); (8, 3, "aaa"); (9, 0, "abv"); (9, 1, "aad"); (9, 2, "abd");

   (9, 3, "aa7"); (10, 0, "aby"); (10, 1, "aae"); (10, 2, "aak");

   (10, 3, "ab7"); (11, 0, "aaq"); (11, 1, "aak"); (11, 2, "aan");

   (11, 3, "aa7"); (12, 0, "aa2"); (12, 1, "ab4"); (12, 2, "aae");

   (12, 3, "abo")]

```

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (5) [(1,1,"abf"); (1,2,"aar"); (1,3,"abn"); (1,4,"abc"); (2,1,"ab7"); (2,2,"aa4"); (2,3,"aao"); (2,4,"ab2"); (3,1,"aak"); (3,2,"aal"); (3,3,"abc"); (3,4,"ab3"); (4,1,"abw"); (4,2,"aax"); (4,3,"abb"); (4,4,"aaz"); (5,1,"aa4"); (5,2,"abv"); (5,3,"abf"); (5,4,"aaa"); (6,1,"ab6"); (6,2,"aaz"); (6,3,"aad"); (6,4,"abp"); (7,1,"abj"); (7,2,"abc"); (7,3,"abl"); (7,4,"aal"); (8,1,"aa5"); (8,2,"aas"); (8,3,"abd"); (8,4,"aaa"); (9,1,"abv"); (9,2,"aad"); (9,3,"abd"); (9,4,"aa7"); (10,1,"aby"); (10,2,"aae"); (10,3,"aak"); (10,4,"ab7"); (11,1,"aaq"); (11,2,"aak"); (11,3,"aan"); (11,4,"aa7"); (12,1,"aa2"); (12,2,"ab4"); (12,3,"aae"); (12,4,"abo")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abf"); (1,2,"aar"); (1,3,"abn"); (1,4,"abc"); (2,1,"ab7"); (2,2,"aa4"); (2,3,"aao"); (2,4,"ab2"); (3,1,"aak"); (3,2,"aal"); (3,3,"abc"); (3,4,"ab3"); (4,1,"abw"); (4,2,"aax"); (4,3,"abb"); (4,4,"aaz"); (5,1,"aa4"); (5,2,"abv"); (5,3,"abf"); (5,4,"aaa"); (6,1,"ab6"); (6,2,"aaz"); (6,3,"aad"); (6,4,"abp"); (7,1,"abj"); (7,2,"abc"); (7,3,"abl"); (7,4,"aal"); (8,1,"aa5"); (8,2,"aas"); (8,3,"abd"); (8,4,"aaa"); (9,1,"abv"); (9,2,"aad"); (9,3,"abd"); (9,4,"aa7"); (10,1,"aby"); (10,2,"aae"); (10,3,"aak"); (10,4,"ab7"); (11,1,"aaq"); (11,2,"aak"); (11,3,"aan"); (11,4,"aa7"); (12,1,"aa2"); (12,2,"ab4"); (12,3,"aae"); (12,4,"abo")]
        ```
        

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (3) [(1,1,"aba"); (1,2,"abm"); (1,3,"abz"); (1,4,"aai"); (1,5,"abx"); (1,6,"aax"); (1,7,"aap"); (2,1,"aaj"); (2,2,"aaa"); (2,3,"aaf"); (2,4,"aas"); (2,5,"abl"); (2,6,"abl"); (2,7,"aa3"); (3,1,"aaa"); (3,2,"aaf"); (3,3,"aa4"); (3,4,"aax"); (3,5,"aas"); (3,6,"abd"); (3,7,"aaj"); (4,1,"aau"); (4,2,"abx"); (4,3,"aar"); (4,4,"abt"); (4,5,"aao"); (4,6,"ab7"); (4,7,"abv"); (5,1,"ab4"); (5,2,"abt"); (5,3,"abz"); (5,4,"abz"); (5,5,"abj"); (5,6,"aam"); (5,7,"abz"); (6,1,"abf"); (6,2,"aar"); (6,3,"abp"); (6,4,"abj"); (6,5,"abp"); (6,6,"abn"); (6,7,"abw"); (7,1,"ab6"); (7,2,"aag"); (7,3,"abi"); (7,4,"aam"); (7,5,"abo"); (7,6,"aav"); (7,7,"aak"); (8,1,"abr"); (8,2,"abg"); (8,3,"aaw"); (8,4,"aah"); (8,5,"abq"); (8,6,"abv"); (8,7,"aab"); (9,1,"abq"); (9,2,"aaa"); (9,3,"aba"); (9,4,"abl"); (9,5,"abb"); (9,6,"aay"); (9,7,"aag"); (10,1,"abh"); (10,2,"abu"); (10,3,"aaz"); (10,4,"ab6"); (10,5,"abi"); (10,6,"aau"); (10,7,"aal")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aba"); (1,2,"abm"); (1,3,"aai"); (1,4,"abx"); (1,5,"aax"); (1,6,"aap"); (2,1,"aaj"); (2,2,"aaa"); (2,3,"aas"); (2,4,"abl"); (2,5,"abl"); (2,6,"aa3"); (3,1,"aaa"); (3,2,"aaf"); (3,3,"aax"); (3,4,"aas"); (3,5,"abd"); (3,6,"aaj"); (4,1,"aau"); (4,2,"abx"); (4,3,"abt"); (4,4,"aao"); (4,5,"ab7"); (4,6,"abv"); (5,1,"ab4"); (5,2,"abt"); (5,3,"abz"); (5,4,"abj"); (5,5,"aam"); (5,6,"abz"); (6,1,"abf"); (6,2,"aar"); (6,3,"abj"); (6,4,"abp"); (6,5,"abn"); (6,6,"abw"); (7,1,"ab6"); (7,2,"aag"); (7,3,"aam"); (7,4,"abo"); (7,5,"aav"); (7,6,"aak"); (8,1,"abr"); (8,2,"abg"); (8,3,"aah"); (8,4,"abq"); (8,5,"abv"); (8,6,"aab"); (9,1,"abq"); (9,2,"aaa"); (9,3,"abl"); (9,4,"abb"); (9,5,"aay"); (9,6,"aag"); (10,1,"abh"); (10,2,"abu"); (10,3,"ab6"); (10,4,"abi"); (10,5,"aau"); (10,6,"aal")]
        ```
        

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (3) [(1,1,"aba"); (1,2,"abm"); (1,3,"abz"); (1,4,"aai"); (1,5,"abx"); (1,6,"aax"); (1,7,"aap"); (2,1,"aaj"); (2,2,"aaa"); (2,3,"aaf"); (2,4,"aas"); (2,5,"abl"); (2,6,"abl"); (2,7,"aa3"); (3,1,"aaa"); (3,2,"aaf"); (3,3,"aa4"); (3,4,"aax"); (3,5,"aas"); (3,6,"abd"); (3,7,"aaj"); (4,1,"aau"); (4,2,"abx"); (4,3,"aar"); (4,4,"abt"); (4,5,"aao"); (4,6,"ab7"); (4,7,"abv"); (5,1,"ab4"); (5,2,"abt"); (5,3,"abz"); (5,4,"abz"); (5,5,"abj"); (5,6,"aam"); (5,7,"abz"); (6,1,"abf"); (6,2,"aar"); (6,3,"abp"); (6,4,"abj"); (6,5,"abp"); (6,6,"abn"); (6,7,"abw"); (7,1,"ab6"); (7,2,"aag"); (7,3,"abi"); (7,4,"aam"); (7,5,"abo"); (7,6,"aav"); (7,7,"aak"); (8,1,"abr"); (8,2,"abg"); (8,3,"aaw"); (8,4,"aah"); (8,5,"abq"); (8,6,"abv"); (8,7,"aab"); (9,1,"abq"); (9,2,"aaa"); (9,3,"aba"); (9,4,"abl"); (9,5,"abb"); (9,6,"aay"); (9,7,"aag"); (10,1,"abh"); (10,2,"abu"); (10,3,"aaz"); (10,4,"ab6"); (10,5,"abi"); (10,6,"aau"); (10,7,"aal")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aba"); (1,2,"abm"); (1,3,"aai"); (1,4,"abx"); (1,5,"aax"); (1,6,"aap"); (2,1,"aaj"); (2,2,"aaa"); (2,3,"aas"); (2,4,"abl"); (2,5,"abl"); (2,6,"aa3"); (3,1,"aaa"); (3,2,"aaf"); (3,3,"aax"); (3,4,"aas"); (3,5,"abd"); (3,6,"aaj"); (4,1,"aau"); (4,2,"abx"); (4,3,"abt"); (4,4,"aao"); (4,5,"ab7"); (4,6,"abv"); (5,1,"ab4"); (5,2,"abt"); (5,3,"abz"); (5,4,"abj"); (5,5,"aam"); (5,6,"abz"); (6,1,"abf"); (6,2,"aar"); (6,3,"abj"); (6,4,"abp"); (6,5,"abn"); (6,6,"abw"); (7,1,"ab6"); (7,2,"aag"); (7,3,"aam"); (7,4,"abo"); (7,5,"aav"); (7,6,"aak"); (8,1,"abr"); (8,2,"abg"); (8,3,"aah"); (8,4,"abq"); (8,5,"abv"); (8,6,"aab"); (9,1,"abq"); (9,2,"aaa"); (9,3,"abl"); (9,4,"abb"); (9,5,"aay"); (9,6,"aag"); (10,1,"abh"); (10,2,"abu"); (10,3,"ab6"); (10,4,"abi"); (10,5,"aau"); (10,6,"aal")]
        ```
        

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (8) [(1,1,"aba"); (1,2,"abm"); (1,3,"abz"); (1,4,"aai"); (1,5,"abx"); (1,6,"aax"); (1,7,"aap"); (2,1,"aaj"); (2,2,"aaa"); (2,3,"aaf"); (2,4,"aas"); (2,5,"abl"); (2,6,"abl"); (2,7,"aa3"); (3,1,"aaa"); (3,2,"aaf"); (3,3,"aa4"); (3,4,"aax"); (3,5,"aas"); (3,6,"abd"); (3,7,"aaj"); (4,1,"aau"); (4,2,"abx"); (4,3,"aar"); (4,4,"abt"); (4,5,"aao"); (4,6,"ab7"); (4,7,"abv"); (5,1,"ab4"); (5,2,"abt"); (5,3,"abz"); (5,4,"abz"); (5,5,"abj"); (5,6,"aam"); (5,7,"abz"); (6,1,"abf"); (6,2,"aar"); (6,3,"abp"); (6,4,"abj"); (6,5,"abp"); (6,6,"abn"); (6,7,"abw"); (7,1,"ab6"); (7,2,"aag"); (7,3,"abi"); (7,4,"aam"); (7,5,"abo"); (7,6,"aav"); (7,7,"aak"); (8,1,"abr"); (8,2,"abg"); (8,3,"aaw"); (8,4,"aah"); (8,5,"abq"); (8,6,"abv"); (8,7,"aab"); (9,1,"abq"); (9,2,"aaa"); (9,3,"aba"); (9,4,"abl"); (9,5,"abb"); (9,6,"aay"); (9,7,"aag"); (10,1,"abh"); (10,2,"abu"); (10,3,"aaz"); (10,4,"ab6"); (10,5,"abi"); (10,6,"aau"); (10,7,"aal")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aba"); (1,2,"abm"); (1,3,"abz"); (1,4,"aai"); (1,5,"abx"); (1,6,"aax"); (1,7,"aap"); (2,1,"aaj"); (2,2,"aaa"); (2,3,"aaf"); (2,4,"aas"); (2,5,"abl"); (2,6,"abl"); (2,7,"aa3"); (3,1,"aaa"); (3,2,"aaf"); (3,3,"aa4"); (3,4,"aax"); (3,5,"aas"); (3,6,"abd"); (3,7,"aaj"); (4,1,"aau"); (4,2,"abx"); (4,3,"aar"); (4,4,"abt"); (4,5,"aao"); (4,6,"ab7"); (4,7,"abv"); (5,1,"ab4"); (5,2,"abt"); (5,3,"abz"); (5,4,"abz"); (5,5,"abj"); (5,6,"aam"); (5,7,"abz"); (6,1,"abf"); (6,2,"aar"); (6,3,"abp"); (6,4,"abj"); (6,5,"abp"); (6,6,"abn"); (6,7,"abw"); (7,1,"ab6"); (7,2,"aag"); (7,3,"abi"); (7,4,"aam"); (7,5,"abo"); (7,6,"aav"); (7,7,"aak"); (8,1,"abr"); (8,2,"abg"); (8,3,"aaw"); (8,4,"aah"); (8,5,"abq"); (8,6,"abv"); (8,7,"aab"); (9,1,"abq"); (9,2,"aaa"); (9,3,"aba"); (9,4,"abl"); (9,5,"abb"); (9,6,"aay"); (9,7,"aag"); (10,1,"abh"); (10,2,"abu"); (10,3,"aaz"); (10,4,"ab6"); (10,5,"abi"); (10,6,"aau"); (10,7,"aal")]
        ```
        

+  _0_ / _0.08_ : Fail: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (0) [(1,1,"aba"); (1,2,"abm"); (1,3,"abz"); (1,4,"aai"); (1,5,"abx"); (1,6,"aax"); (1,7,"aap"); (2,1,"aaj"); (2,2,"aaa"); (2,3,"aaf"); (2,4,"aas"); (2,5,"abl"); (2,6,"abl"); (2,7,"aa3"); (3,1,"aaa"); (3,2,"aaf"); (3,3,"aa4"); (3,4,"aax"); (3,5,"aas"); (3,6,"abd"); (3,7,"aaj"); (4,1,"aau"); (4,2,"abx"); (4,3,"aar"); (4,4,"abt"); (4,5,"aao"); (4,6,"ab7"); (4,7,"abv"); (5,1,"ab4"); (5,2,"abt"); (5,3,"abz"); (5,4,"abz"); (5,5,"abj"); (5,6,"aam"); (5,7,"abz"); (6,1,"abf"); (6,2,"aar"); (6,3,"abp"); (6,4,"abj"); (6,5,"abp"); (6,6,"abn"); (6,7,"abw"); (7,1,"ab6"); (7,2,"aag"); (7,3,"abi"); (7,4,"aam"); (7,5,"abo"); (7,6,"aav"); (7,7,"aak"); (8,1,"abr"); (8,2,"abg"); (8,3,"aaw"); (8,4,"aah"); (8,5,"abq"); (8,6,"abv"); (8,7,"aab"); (9,1,"abq"); (9,2,"aaa"); (9,3,"aba"); (9,4,"abl"); (9,5,"abb"); (9,6,"aay"); (9,7,"aag"); (10,1,"abh"); (10,2,"abu"); (10,3,"aaz"); (10,4,"ab6"); (10,5,"abi"); (10,6,"aau"); (10,7,"aal")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aba"); (1,2,"abm"); (1,3,"abz"); (1,4,"aai"); (1,5,"abx"); (1,6,"aax"); (1,7,"aap"); (2,1,"aaj"); (2,2,"aaa"); (2,3,"aaf"); (2,4,"aas"); (2,5,"abl"); (2,6,"abl"); (2,7,"aa3"); (3,1,"aaa"); (3,2,"aaf"); (3,3,"aa4"); (3,4,"aax"); (3,5,"aas"); (3,6,"abd"); (3,7,"aaj"); (4,1,"aau"); (4,2,"abx"); (4,3,"aar"); (4,4,"abt"); (4,5,"aao"); (4,6,"ab7"); (4,7,"abv"); (5,1,"ab4"); (5,2,"abt"); (5,3,"abz"); (5,4,"abz"); (5,5,"abj"); (5,6,"aam"); (5,7,"abz"); (6,1,"abf"); (6,2,"aar"); (6,3,"abp"); (6,4,"abj"); (6,5,"abp"); (6,6,"abn"); (6,7,"abw"); (7,1,"ab6"); (7,2,"aag"); (7,3,"abi"); (7,4,"aam"); (7,5,"abo"); (7,6,"aav"); (7,7,"aak"); (8,1,"abr"); (8,2,"abg"); (8,3,"aaw"); (8,4,"aah"); (8,5,"abq"); (8,6,"abv"); (8,7,"aab"); (9,1,"abq"); (9,2,"aaa"); (9,3,"aba"); (9,4,"abl"); (9,5,"abb"); (9,6,"aay"); (9,7,"aag"); (10,1,"abh"); (10,2,"abu"); (10,3,"aaz"); (10,4,"ab6"); (10,5,"abi"); (10,6,"aau"); (10,7,"aal")]
        ```
        

FAILED with output:

```      val expected : (int * int * string) list =

  [(1, 1, "aba"); (1, 2, "abm"); (1, 3, "abz"); (1, 4, "aai"); (1, 5, "abx");

   (1, 6, "aax"); (1, 7, "aap"); (2, 1, "aaj"); (2, 2, "aaa"); (2, 3, "aaf");

   (2, 4, "aas"); (2, 5, "abl"); (2, 6, "abl"); (2, 7, "aa3"); (3, 1, "aaa");

   (3, 2, "aaf"); (3, 3, "aa4"); (3, 4, "aax"); (3, 5, "aas"); (3, 6, "abd");

   (3, 7, "aaj"); (4, 1, "aau"); (4, 2, "abx"); (4, 3, "aar"); (4, 4, "abt");

   (4, 5, "aao"); (4, 6, "ab7"); (4, 7, "abv"); (5, 1, "ab4"); (5, 2, "abt");

   (5, 3, "abz"); (5, 4, "abz"); (5, 5, "abj"); (5, 6, "aam"); (5, 7, "abz");

   (6, 1, "abf"); (6, 2, "aar"); (6, 3, "abp"); (6, 4, "abj"); (6, 5, "abp");

   (6, 6, "abn"); (6, 7, "abw"); (7, 1, "ab6"); (7, 2, "aag"); (7, 3, "abi");

   (7, 4, "aam"); (7, 5, "abo"); (7, 6, "aav"); (7, 7, "aak"); (8, 1, "abr");

   (8, 2, "abg"); (8, 3, "aaw"); (8, 4, "aah"); (8, 5, "abq"); (8, 6, "abv");

   (8, 7, "aab"); (9, 1, "abq"); (9, 2, "aaa"); (9, 3, "aba"); (9, 4, "abl");

   (9, 5, "abb"); (9, 6, "aay"); (9, 7, "aag"); (10, 1, "abh");

   (10, 2, "abu"); (10, 3, "aaz"); (10, 4, "ab6"); (10, 5, "abi");

   (10, 6, "aau"); (10, 7, "aal")]

   val result : (int * int * string) list =

  [(1, 0, "aba"); (1, 1, "abm"); (1, 2, "abz"); (1, 3, "aai"); (1, 4, "abx");

   (1, 5, "aax"); (1, 6, "aap"); (2, 0, "aaj"); (2, 1, "aaa"); (2, 2, "aaf");

   (2, 3, "aas"); (2, 4, "abl"); (2, 5, "abl"); (2, 6, "aa3"); (3, 0, "aaa");

   (3, 1, "aaf"); (3, 2, "aa4"); (3, 3, "aax"); (3, 4, "aas"); (3, 5, "abd");

   (3, 6, "aaj"); (4, 0, "aau"); (4, 1, "abx"); (4, 2, "aar"); (4, 3, "abt");

   (4, 4, "aao"); (4, 5, "ab7"); (4, 6, "abv"); (5, 0, "ab4"); (5, 1, "abt");

   (5, 2, "abz"); (5, 3, "abz"); (5, 4, "abj"); (5, 5, "aam"); (5, 6, "abz");

   (6, 0, "abf"); (6, 1, "aar"); (6, 2, "abp"); (6, 3, "abj"); (6, 4, "abp");

   (6, 5, "abn"); (6, 6, "abw"); (7, 0, "ab6"); (7, 1, "aag"); (7, 2, "abi");

   (7, 3, "aam"); (7, 4, "abo"); (7, 5, "aav"); (7, 6, "aak"); (8, 0, "abr");

   (8, 1, "abg"); (8, 2, "aaw"); (8, 3, "aah"); (8, 4, "abq"); (8, 5, "abv");

   (8, 6, "aab"); (9, 0, "abq"); (9, 1, "aaa"); (9, 2, "aba"); (9, 3, "abl");

   (9, 4, "abb"); (9, 5, "aay"); (9, 6, "aag"); (10, 0, "abh");

   (10, 1, "abu"); (10, 2, "aaz"); (10, 3, "ab6"); (10, 4, "abi");

   (10, 5, "aau"); (10, 6, "aal")]

```

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (5) [(1,1,"aba"); (1,2,"abm"); (1,3,"abz"); (1,4,"aai"); (1,5,"abx"); (1,6,"aax"); (1,7,"aap"); (2,1,"aaj"); (2,2,"aaa"); (2,3,"aaf"); (2,4,"aas"); (2,5,"abl"); (2,6,"abl"); (2,7,"aa3"); (3,1,"aaa"); (3,2,"aaf"); (3,3,"aa4"); (3,4,"aax"); (3,5,"aas"); (3,6,"abd"); (3,7,"aaj"); (4,1,"aau"); (4,2,"abx"); (4,3,"aar"); (4,4,"abt"); (4,5,"aao"); (4,6,"ab7"); (4,7,"abv"); (5,1,"ab4"); (5,2,"abt"); (5,3,"abz"); (5,4,"abz"); (5,5,"abj"); (5,6,"aam"); (5,7,"abz"); (6,1,"abf"); (6,2,"aar"); (6,3,"abp"); (6,4,"abj"); (6,5,"abp"); (6,6,"abn"); (6,7,"abw"); (7,1,"ab6"); (7,2,"aag"); (7,3,"abi"); (7,4,"aam"); (7,5,"abo"); (7,6,"aav"); (7,7,"aak"); (8,1,"abr"); (8,2,"abg"); (8,3,"aaw"); (8,4,"aah"); (8,5,"abq"); (8,6,"abv"); (8,7,"aab"); (9,1,"abq"); (9,2,"aaa"); (9,3,"aba"); (9,4,"abl"); (9,5,"abb"); (9,6,"aay"); (9,7,"aag"); (10,1,"abh"); (10,2,"abu"); (10,3,"aaz"); (10,4,"ab6"); (10,5,"abi"); (10,6,"aau"); (10,7,"aal")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aba"); (1,2,"abm"); (1,3,"abz"); (1,4,"aai"); (1,5,"aax"); (1,6,"aap"); (2,1,"aaj"); (2,2,"aaa"); (2,3,"aaf"); (2,4,"aas"); (2,5,"abl"); (2,6,"aa3"); (3,1,"aaa"); (3,2,"aaf"); (3,3,"aa4"); (3,4,"aax"); (3,5,"abd"); (3,6,"aaj"); (4,1,"aau"); (4,2,"abx"); (4,3,"aar"); (4,4,"abt"); (4,5,"ab7"); (4,6,"abv"); (5,1,"ab4"); (5,2,"abt"); (5,3,"abz"); (5,4,"abz"); (5,5,"aam"); (5,6,"abz"); (6,1,"abf"); (6,2,"aar"); (6,3,"abp"); (6,4,"abj"); (6,5,"abn"); (6,6,"abw"); (7,1,"ab6"); (7,2,"aag"); (7,3,"abi"); (7,4,"aam"); (7,5,"aav"); (7,6,"aak"); (8,1,"abr"); (8,2,"abg"); (8,3,"aaw"); (8,4,"aah"); (8,5,"abv"); (8,6,"aab"); (9,1,"abq"); (9,2,"aaa"); (9,3,"aba"); (9,4,"abl"); (9,5,"aay"); (9,6,"aag"); (10,1,"abh"); (10,2,"abu"); (10,3,"aaz"); (10,4,"ab6"); (10,5,"aau"); (10,6,"aal")]
        ```
        

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (4) [(1,1,"abt"); (1,2,"aac"); (1,3,"aar"); (2,1,"aat"); (2,2,"abm"); (2,3,"ab7"); (3,1,"aat"); (3,2,"abx"); (3,3,"ab5"); (4,1,"abp"); (4,2,"abr"); (4,3,"aav"); (5,1,"abw"); (5,2,"aaa"); (5,3,"aa7"); (6,1,"abl"); (6,2,"aac"); (6,3,"aa4"); (7,1,"aby"); (7,2,"abl"); (7,3,"abm"); (8,1,"aau"); (8,2,"aak"); (8,3,"abm"); (9,1,"aav"); (9,2,"aa4"); (9,3,"aae"); (10,1,"ab4"); (10,2,"aam"); (10,3,"abs")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abt"); (1,2,"aac"); (1,3,"aar"); (2,1,"aat"); (2,2,"abm"); (2,3,"ab7"); (3,1,"aat"); (3,2,"abx"); (3,3,"ab5"); (4,1,"abp"); (4,2,"abr"); (4,3,"aav"); (5,1,"abw"); (5,2,"aaa"); (5,3,"aa7"); (6,1,"abl"); (6,2,"aac"); (6,3,"aa4"); (7,1,"aby"); (7,2,"abl"); (7,3,"abm"); (8,1,"aau"); (8,2,"aak"); (8,3,"abm"); (9,1,"aav"); (9,2,"aa4"); (9,3,"aae"); (10,1,"ab4"); (10,2,"aam"); (10,3,"abs")]
        ```
        

+  _0_ / _0.08_ : Fail: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (-1) [(1,1,"abt"); (1,2,"aac"); (1,3,"aar"); (2,1,"aat"); (2,2,"abm"); (2,3,"ab7"); (3,1,"aat"); (3,2,"abx"); (3,3,"ab5"); (4,1,"abp"); (4,2,"abr"); (4,3,"aav"); (5,1,"abw"); (5,2,"aaa"); (5,3,"aa7"); (6,1,"abl"); (6,2,"aac"); (6,3,"aa4"); (7,1,"aby"); (7,2,"abl"); (7,3,"abm"); (8,1,"aau"); (8,2,"aak"); (8,3,"abm"); (9,1,"aav"); (9,2,"aa4"); (9,3,"aae"); (10,1,"ab4"); (10,2,"aam"); (10,3,"abs")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abt"); (1,2,"aac"); (1,3,"aar"); (2,1,"aat"); (2,2,"abm"); (2,3,"ab7"); (3,1,"aat"); (3,2,"abx"); (3,3,"ab5"); (4,1,"abp"); (4,2,"abr"); (4,3,"aav"); (5,1,"abw"); (5,2,"aaa"); (5,3,"aa7"); (6,1,"abl"); (6,2,"aac"); (6,3,"aa4"); (7,1,"aby"); (7,2,"abl"); (7,3,"abm"); (8,1,"aau"); (8,2,"aak"); (8,3,"abm"); (9,1,"aav"); (9,2,"aa4"); (9,3,"aae"); (10,1,"ab4"); (10,2,"aam"); (10,3,"abs")]
        ```
        

FAILED with output:

```    val expected : (int * int * string) list =

  [(1, 1, "abt"); (1, 2, "aac"); (1, 3, "aar"); (2, 1, "aat"); (2, 2, "abm");

   (2, 3, "ab7"); (3, 1, "aat"); (3, 2, "abx"); (3, 3, "ab5"); (4, 1, "abp");

   (4, 2, "abr"); (4, 3, "aav"); (5, 1, "abw"); (5, 2, "aaa"); (5, 3, "aa7");

   (6, 1, "abl"); (6, 2, "aac"); (6, 3, "aa4"); (7, 1, "aby"); (7, 2, "abl");

   (7, 3, "abm"); (8, 1, "aau"); (8, 2, "aak"); (8, 3, "abm"); (9, 1, "aav");

   (9, 2, "aa4"); (9, 3, "aae"); (10, 1, "ab4"); (10, 2, "aam");

   (10, 3, "abs")]

 val result : (int * int * string) list =

  [(1, 0, "abt"); (1, 1, "aac"); (1, 2, "aar"); (2, 0, "aat"); (2, 1, "abm");

   (2, 2, "ab7"); (3, 0, "aat"); (3, 1, "abx"); (3, 2, "ab5"); (4, 0, "abp");

   (4, 1, "abr"); (4, 2, "aav"); (5, 0, "abw"); (5, 1, "aaa"); (5, 2, "aa7");

   (6, 0, "abl"); (6, 1, "aac"); (6, 2, "aa4"); (7, 0, "aby"); (7, 1, "abl");

   (7, 2, "abm"); (8, 0, "aau"); (8, 1, "aak"); (8, 2, "abm"); (9, 0, "aav");

   (9, 1, "aa4"); (9, 2, "aae"); (10, 0, "ab4"); (10, 1, "aam");

   (10, 2, "abs")]

```

+  _0_ / _0.08_ : Fail: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (-1) [(1,1,"abt"); (1,2,"aac"); (1,3,"aar"); (2,1,"aat"); (2,2,"abm"); (2,3,"ab7"); (3,1,"aat"); (3,2,"abx"); (3,3,"ab5"); (4,1,"abp"); (4,2,"abr"); (4,3,"aav"); (5,1,"abw"); (5,2,"aaa"); (5,3,"aa7"); (6,1,"abl"); (6,2,"aac"); (6,3,"aa4"); (7,1,"aby"); (7,2,"abl"); (7,3,"abm"); (8,1,"aau"); (8,2,"aak"); (8,3,"abm"); (9,1,"aav"); (9,2,"aa4"); (9,3,"aae"); (10,1,"ab4"); (10,2,"aam"); (10,3,"abs")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abt"); (1,2,"aac"); (1,3,"aar"); (2,1,"aat"); (2,2,"abm"); (2,3,"ab7"); (3,1,"aat"); (3,2,"abx"); (3,3,"ab5"); (4,1,"abp"); (4,2,"abr"); (4,3,"aav"); (5,1,"abw"); (5,2,"aaa"); (5,3,"aa7"); (6,1,"abl"); (6,2,"aac"); (6,3,"aa4"); (7,1,"aby"); (7,2,"abl"); (7,3,"abm"); (8,1,"aau"); (8,2,"aak"); (8,3,"abm"); (9,1,"aav"); (9,2,"aa4"); (9,3,"aae"); (10,1,"ab4"); (10,2,"aam"); (10,3,"abs")]
        ```
        

FAILED with output:

```    val expected : (int * int * string) list =

  [(1, 1, "abt"); (1, 2, "aac"); (1, 3, "aar"); (2, 1, "aat"); (2, 2, "abm");

   (2, 3, "ab7"); (3, 1, "aat"); (3, 2, "abx"); (3, 3, "ab5"); (4, 1, "abp");

   (4, 2, "abr"); (4, 3, "aav"); (5, 1, "abw"); (5, 2, "aaa"); (5, 3, "aa7");

   (6, 1, "abl"); (6, 2, "aac"); (6, 3, "aa4"); (7, 1, "aby"); (7, 2, "abl");

   (7, 3, "abm"); (8, 1, "aau"); (8, 2, "aak"); (8, 3, "abm"); (9, 1, "aav");

   (9, 2, "aa4"); (9, 3, "aae"); (10, 1, "ab4"); (10, 2, "aam");

   (10, 3, "abs")]

 val result : (int * int * string) list =

  [(1, 0, "abt"); (1, 1, "aac"); (1, 2, "aar"); (2, 0, "aat"); (2, 1, "abm");

   (2, 2, "ab7"); (3, 0, "aat"); (3, 1, "abx"); (3, 2, "ab5"); (4, 0, "abp");

   (4, 1, "abr"); (4, 2, "aav"); (5, 0, "abw"); (5, 1, "aaa"); (5, 2, "aa7");

   (6, 0, "abl"); (6, 1, "aac"); (6, 2, "aa4"); (7, 0, "aby"); (7, 1, "abl");

   (7, 2, "abm"); (8, 0, "aau"); (8, 1, "aak"); (8, 2, "abm"); (9, 0, "aav");

   (9, 1, "aa4"); (9, 2, "aae"); (10, 0, "ab4"); (10, 1, "aam");

   (10, 2, "abs")]

```

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (4) [(1,1,"abt"); (1,2,"aac"); (1,3,"aar"); (2,1,"aat"); (2,2,"abm"); (2,3,"ab7"); (3,1,"aat"); (3,2,"abx"); (3,3,"ab5"); (4,1,"abp"); (4,2,"abr"); (4,3,"aav"); (5,1,"abw"); (5,2,"aaa"); (5,3,"aa7"); (6,1,"abl"); (6,2,"aac"); (6,3,"aa4"); (7,1,"aby"); (7,2,"abl"); (7,3,"abm"); (8,1,"aau"); (8,2,"aak"); (8,3,"abm"); (9,1,"aav"); (9,2,"aa4"); (9,3,"aae"); (10,1,"ab4"); (10,2,"aam"); (10,3,"abs")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abt"); (1,2,"aac"); (1,3,"aar"); (2,1,"aat"); (2,2,"abm"); (2,3,"ab7"); (3,1,"aat"); (3,2,"abx"); (3,3,"ab5"); (4,1,"abp"); (4,2,"abr"); (4,3,"aav"); (5,1,"abw"); (5,2,"aaa"); (5,3,"aa7"); (6,1,"abl"); (6,2,"aac"); (6,3,"aa4"); (7,1,"aby"); (7,2,"abl"); (7,3,"abm"); (8,1,"aau"); (8,2,"aak"); (8,3,"abm"); (9,1,"aav"); (9,2,"aa4"); (9,3,"aae"); (10,1,"ab4"); (10,2,"aam"); (10,3,"abs")]
        ```
        

+  _0.08_ / _0.08_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.delete_column (4) [(1,1,"abt"); (1,2,"aac"); (1,3,"aar"); (2,1,"aat"); (2,2,"abm"); (2,3,"ab7"); (3,1,"aat"); (3,2,"abx"); (3,3,"ab5"); (4,1,"abp"); (4,2,"abr"); (4,3,"aav"); (5,1,"abw"); (5,2,"aaa"); (5,3,"aa7"); (6,1,"abl"); (6,2,"aac"); (6,3,"aa4"); (7,1,"aby"); (7,2,"abl"); (7,3,"abm"); (8,1,"aau"); (8,2,"aak"); (8,3,"abm"); (9,1,"aav"); (9,2,"aa4"); (9,3,"aae"); (10,1,"ab4"); (10,2,"aam"); (10,3,"abs")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abt"); (1,2,"aac"); (1,3,"aar"); (2,1,"aat"); (2,2,"abm"); (2,3,"ab7"); (3,1,"aat"); (3,2,"abx"); (3,3,"ab5"); (4,1,"abp"); (4,2,"abr"); (4,3,"aav"); (5,1,"abw"); (5,2,"aaa"); (5,3,"aa7"); (6,1,"abl"); (6,2,"aac"); (6,3,"aa4"); (7,1,"aby"); (7,2,"abl"); (7,3,"abm"); (8,1,"aau"); (8,2,"aak"); (8,3,"abm"); (9,1,"aav"); (9,2,"aa4"); (9,3,"aae"); (10,1,"ab4"); (10,2,"aam"); (10,3,"abs")]
        ```
        

#### Subtotal: _2.800000000000001_ / _4.000000000000002_

## Manual tests entered by TA: knaus039

+ Pass: Check that file "tables.ml" exists.

+  _7_ / _7_ : Pass: 
    Useful comments and indentation
    
    
     Score (out of 2):2 
    Appropriate task decomposition into helper functions
    
    
     Score (out of 2):2 
    Uses an appropriate/efficient algorithm
    
    
     Score (out of 2):2 
    Correct tail recursion
    
    
     Score (out of 1):1 


+ Pass: Other Stylistic Comments & Feedback

    Good

#### Subtotal: _7_ / _7_

