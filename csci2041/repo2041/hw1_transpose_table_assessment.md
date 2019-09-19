## Assessment for HW1 transpose_table

Run on February 16, 15:16:09 PM.

+ Pass: Change into directory "hw1".

## Feedback Tests (total possible value: 5)

+ Pass: Check that file "tables.ml" exists.

+ Pass: Check that file "slicendice.ml" exists.

+ Pass: Check that hw1 files compile without errors FAILED with ouput:
File "slicendice.ml", line 5, characters 8-19:
Error: Unbound value Tables.main
 FAILED with ouput:
File "tables.ml", line 80, characters 14-224:
Warning 8: this pattern-matching is not exhaustive.
Here is an example of a case that is not matched:
_::_
(However, some guarded clause may match this value.)
File "tables.ml", line 85, characters 22-232:
Warning 8: this pattern-matching is not exhaustive.
Here is an example of a case that is not matched:
_::_
(However, some guarded clause may match this value.)
File "tables.ml", line 104, characters 47-53:
Error: Unbound value curRow
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


+  _1.6666666666666667_ / _1.6666666666666667_ : Pass: 
Check that the result of evaluating
   ```
   List.sort compare (transpose_table [(1,1,"a"); (1,2,"b"); (1,3,"c"); (2,1,"d"); (2,2,"e"); (2,3,"f")])
   ```
   matches the pattern `List.sort compare [(1,1,"a"); (2,1,"b"); (3,1,"c"); (1,2,"d"); (2,2,"e"); (3,2,"f")]`.

   




+  _1.6666666666666667_ / _1.6666666666666667_ : Pass: 
Check that the result of evaluating
   ```
   transpose_table [(1,4,"h")]
   ```
   matches the pattern `[(4,1,"h")]`.

   




+  _1.6666666666666667_ / _1.6666666666666667_ : Pass: 
Check that the result of evaluating
   ```
   transpose_table []
   ```
   matches the pattern `[]`.

   




#### Subtotal: _5.0_ / _5.0_

## Random Tests

+ Pass: Check that file "tables.ml" exists.

+ Pass: Check that file "slicendice.ml" exists.

+ Pass: Check that hw1 files compile without errors FAILED with ouput:
File "slicendice.ml", line 5, characters 8-19:
Error: Unbound value Tables.main
 FAILED with ouput:
File "tables.ml", line 80, characters 14-224:
Warning 8: this pattern-matching is not exhaustive.
Here is an example of a case that is not matched:
_::_
(However, some guarded clause may match this value.)
File "tables.ml", line 85, characters 22-232:
Warning 8: this pattern-matching is not exhaustive.
Here is an example of a case that is not matched:
_::_
(However, some guarded clause may match this value.)
File "tables.ml", line 104, characters 47-53:
Error: Unbound value curRow
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


+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(9,1,"abi"); (3,4,"aba"); (6,4,"aar"); (2,5,"aag"); (6,3,"abw"); (8,1,"aay"); (6,1,"abk"); (2,4,"abf"); (3,6,"abr"); (7,1,"abq"); (5,7,"abu"); (4,5,"aaj"); (9,3,"aaf"); (6,2,"aap"); (1,1,"aam"); (8,6,"abr"); (9,7,"abe"); (7,4,"ab5"); (1,4,"abg"); (8,2,"aaf"); (4,4,"aap"); (3,3,"aal"); (1,2,"aas"); (6,6,"abb"); (5,6,"aak"); (6,5,"abd"); (1,7,"abn"); (7,5,"aav"); (6,7,"aac"); (1,3,"abd"); (5,1,"aaf"); (2,7,"abo"); (4,7,"aag"); (1,6,"aa7"); (8,5,"ab6"); (9,2,"aas"); (2,6,"abo"); (4,3,"aas"); (5,4,"abj"); (9,6,"aad"); (5,3,"abd"); (9,4,"abk"); (3,2,"abm"); (7,7,"aag"); (4,1,"abn"); (3,1,"ab4"); (8,4,"aap"); (7,2,"aa3"); (1,5,"aaz"); (7,6,"abt"); (3,7,"aah"); (2,2,"abu"); (8,3,"abv"); (2,1,"aak"); (9,5,"abl"); (4,2,"aab"); (5,2,"abz"); (7,3,"aae"); (4,6,"abw")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,9,"abi"); (4,3,"aba"); (4,6,"aar"); (5,2,"aag"); (3,6,"abw"); (1,8,"aay"); (1,6,"abk"); (4,2,"abf"); (6,3,"abr"); (1,7,"abq"); (7,5,"abu"); (5,4,"aaj"); (3,9,"aaf"); (2,6,"aap"); (1,1,"aam"); (6,8,"abr"); (7,9,"abe"); (4,7,"ab5"); (4,1,"abg"); (2,8,"aaf"); (4,4,"aap"); (3,3,"aal"); (2,1,"aas"); (6,6,"abb"); (6,5,"aak"); (5,6,"abd"); (7,1,"abn"); (5,7,"aav"); (7,6,"aac"); (3,1,"abd"); (1,5,"aaf"); (7,2,"abo"); (7,4,"aag"); (6,1,"aa7"); (5,8,"ab6"); (2,9,"aas"); (6,2,"abo"); (3,4,"aas"); (4,5,"abj"); (6,9,"aad"); (3,5,"abd"); (4,9,"abk"); (2,3,"abm"); (7,7,"aag"); (1,4,"abn"); (1,3,"ab4"); (4,8,"aap"); (2,7,"aa3"); (5,1,"aaz"); (6,7,"abt"); (7,3,"aah"); (2,2,"abu"); (3,8,"abv"); (1,2,"aak"); (5,9,"abl"); (2,4,"aab"); (2,5,"abz"); (3,7,"aae"); (6,4,"abw")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(7,2,"aa3"); (5,1,"aaf"); (9,6,"aad"); (9,3,"aaf"); (5,5,"aa7"); (7,4,"ab5"); (1,6,"aa7"); (8,2,"aaf"); (5,4,"abj"); (7,3,"aae"); (7,5,"aav"); (2,3,"aa3"); (2,4,"abf"); (8,6,"abr"); (1,4,"abg"); (5,2,"abz"); (5,7,"abu"); (2,5,"aag"); (1,1,"aam"); (7,1,"abq"); (3,3,"aal"); (6,1,"abk"); (9,1,"abi"); (9,4,"abk"); (6,4,"aar"); (4,5,"aaj"); (6,5,"abd"); (2,6,"abo"); (1,5,"aaz"); (9,7,"abe"); (3,6,"abr"); (5,3,"abd"); (6,2,"aap"); (7,7,"aag"); (5,6,"aak"); (3,7,"aah"); (4,3,"aas"); (8,4,"aap"); (6,7,"aac"); (1,7,"abn"); (8,1,"aay"); (8,5,"ab6"); (7,6,"abt"); (4,2,"aab"); (9,2,"aas"); (8,7,"aa4"); (9,5,"abl"); (2,7,"abo"); (8,3,"abv"); (6,6,"abb"); (4,4,"aap"); (3,4,"aba"); (3,1,"ab4"); (2,1,"aak"); (3,2,"abm"); (1,3,"abd"); (4,6,"abw"); (4,7,"aag"); (2,2,"abu")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(2,7,"aa3"); (1,5,"aaf"); (6,9,"aad"); (3,9,"aaf"); (5,5,"aa7"); (4,7,"ab5"); (6,1,"aa7"); (2,8,"aaf"); (4,5,"abj"); (3,7,"aae"); (5,7,"aav"); (3,2,"aa3"); (4,2,"abf"); (6,8,"abr"); (4,1,"abg"); (2,5,"abz"); (7,5,"abu"); (5,2,"aag"); (1,1,"aam"); (1,7,"abq"); (3,3,"aal"); (1,6,"abk"); (1,9,"abi"); (4,9,"abk"); (4,6,"aar"); (5,4,"aaj"); (5,6,"abd"); (6,2,"abo"); (5,1,"aaz"); (7,9,"abe"); (6,3,"abr"); (3,5,"abd"); (2,6,"aap"); (7,7,"aag"); (6,5,"aak"); (7,3,"aah"); (3,4,"aas"); (4,8,"aap"); (7,6,"aac"); (7,1,"abn"); (1,8,"aay"); (5,8,"ab6"); (6,7,"abt"); (2,4,"aab"); (2,9,"aas"); (7,8,"aa4"); (5,9,"abl"); (7,2,"abo"); (3,8,"abv"); (6,6,"abb"); (4,4,"aap"); (4,3,"aba"); (1,3,"ab4"); (1,2,"aak"); (2,3,"abm"); (3,1,"abd"); (6,4,"abw"); (7,4,"aag"); (2,2,"abu")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(9,6,"aad"); (4,7,"aag"); (3,6,"abr"); (9,1,"abi"); (6,3,"abw"); (3,7,"aah"); (2,1,"aak"); (2,2,"abu"); (2,6,"abo"); (6,1,"abk"); (3,1,"ab4"); (1,4,"abg"); (7,3,"aae"); (9,5,"abl"); (5,2,"abz"); (2,4,"abf"); (6,4,"aar"); (8,7,"aa4"); (8,4,"aap"); (3,3,"aal"); (5,4,"abj"); (8,6,"abr"); (7,4,"ab5"); (9,4,"abk"); (5,5,"aa7"); (8,3,"abv"); (4,4,"aap"); (3,4,"aba"); (7,1,"abq"); (7,6,"abt"); (2,5,"aag"); (3,5,"aaj"); (6,2,"aap"); (4,2,"aab"); (3,2,"abm"); (5,7,"abu"); (1,3,"abd"); (5,6,"aak"); (4,6,"abw"); (2,7,"abo"); (6,7,"aac"); (1,5,"aaz"); (8,1,"aay"); (4,1,"abn"); (9,7,"abe"); (2,3,"aa3"); (6,6,"abb"); (9,3,"aaf"); (4,3,"aas"); (1,2,"aas"); (8,5,"ab6"); (9,2,"aas"); (6,5,"abd"); (7,2,"aa3"); (1,1,"aam"); (5,3,"abd"); (1,6,"aa7"); (5,1,"aaf"); (7,5,"aav"); (4,5,"aaj"); (7,7,"aag"); (8,2,"aaf")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(6,9,"aad"); (7,4,"aag"); (6,3,"abr"); (1,9,"abi"); (3,6,"abw"); (7,3,"aah"); (1,2,"aak"); (2,2,"abu"); (6,2,"abo"); (1,6,"abk"); (1,3,"ab4"); (4,1,"abg"); (3,7,"aae"); (5,9,"abl"); (2,5,"abz"); (4,2,"abf"); (4,6,"aar"); (7,8,"aa4"); (4,8,"aap"); (3,3,"aal"); (4,5,"abj"); (6,8,"abr"); (4,7,"ab5"); (4,9,"abk"); (5,5,"aa7"); (3,8,"abv"); (4,4,"aap"); (4,3,"aba"); (1,7,"abq"); (6,7,"abt"); (5,2,"aag"); (5,3,"aaj"); (2,6,"aap"); (2,4,"aab"); (2,3,"abm"); (7,5,"abu"); (3,1,"abd"); (6,5,"aak"); (6,4,"abw"); (7,2,"abo"); (7,6,"aac"); (5,1,"aaz"); (1,8,"aay"); (1,4,"abn"); (7,9,"abe"); (3,2,"aa3"); (6,6,"abb"); (3,9,"aaf"); (3,4,"aas"); (2,1,"aas"); (5,8,"ab6"); (2,9,"aas"); (5,6,"abd"); (2,7,"aa3"); (1,1,"aam"); (3,5,"abd"); (6,1,"aa7"); (1,5,"aaf"); (5,7,"aav"); (5,4,"aaj"); (7,7,"aag"); (2,8,"aaf")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(5,6,"aak"); (4,6,"abw"); (7,1,"abq"); (4,2,"aab"); (5,7,"abu"); (3,6,"abr"); (1,3,"abd"); (5,5,"aa7"); (8,6,"abr"); (6,3,"abw"); (2,4,"abf"); (9,7,"abe"); (8,3,"abv"); (6,6,"abb"); (4,1,"abn"); (9,6,"aad"); (3,4,"aba"); (3,7,"aah"); (5,2,"abz"); (6,4,"aar"); (5,3,"abd"); (3,3,"aal"); (2,1,"aak"); (7,4,"ab5"); (2,7,"abo"); (7,3,"aae"); (6,2,"aap"); (4,7,"aag"); (1,7,"abn"); (2,6,"abo"); (8,4,"aap"); (1,6,"aa7"); (7,2,"aa3"); (7,6,"abt"); (2,2,"abu"); (3,1,"ab4"); (4,4,"aap"); (9,4,"abk"); (9,5,"abl"); (3,2,"abm"); (8,5,"ab6"); (7,7,"aag"); (1,4,"abg"); (6,1,"abk"); (1,1,"aam"); (9,3,"aaf"); (3,5,"aaj"); (8,2,"aaf"); (5,1,"aaf"); (1,5,"aaz"); (6,5,"abd"); (5,4,"abj"); (2,5,"aag"); (7,5,"aav"); (4,3,"aas"); (4,5,"aaj"); (2,3,"aa3"); (9,2,"aas"); (1,2,"aas"); (9,1,"abi"); (6,7,"aac"); (8,7,"aa4")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(6,5,"aak"); (6,4,"abw"); (1,7,"abq"); (2,4,"aab"); (7,5,"abu"); (6,3,"abr"); (3,1,"abd"); (5,5,"aa7"); (6,8,"abr"); (3,6,"abw"); (4,2,"abf"); (7,9,"abe"); (3,8,"abv"); (6,6,"abb"); (1,4,"abn"); (6,9,"aad"); (4,3,"aba"); (7,3,"aah"); (2,5,"abz"); (4,6,"aar"); (3,5,"abd"); (3,3,"aal"); (1,2,"aak"); (4,7,"ab5"); (7,2,"abo"); (3,7,"aae"); (2,6,"aap"); (7,4,"aag"); (7,1,"abn"); (6,2,"abo"); (4,8,"aap"); (6,1,"aa7"); (2,7,"aa3"); (6,7,"abt"); (2,2,"abu"); (1,3,"ab4"); (4,4,"aap"); (4,9,"abk"); (5,9,"abl"); (2,3,"abm"); (5,8,"ab6"); (7,7,"aag"); (4,1,"abg"); (1,6,"abk"); (1,1,"aam"); (3,9,"aaf"); (5,3,"aaj"); (2,8,"aaf"); (1,5,"aaf"); (5,1,"aaz"); (5,6,"abd"); (4,5,"abj"); (5,2,"aag"); (5,7,"aav"); (3,4,"aas"); (5,4,"aaj"); (3,2,"aa3"); (2,9,"aas"); (2,1,"aas"); (1,9,"abi"); (7,6,"aac"); (7,8,"aa4")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(9,4,"abk"); (1,6,"aa7"); (2,6,"abo"); (6,6,"abb"); (7,3,"aae"); (1,4,"abg"); (4,6,"abw"); (9,2,"aas"); (7,2,"aa3"); (6,4,"aar"); (3,2,"abm"); (7,7,"aag"); (9,1,"abi"); (6,5,"abd"); (5,1,"aaf"); (3,4,"aba"); (4,1,"abn"); (4,3,"aas"); (2,3,"aa3"); (4,7,"aag"); (5,5,"aa7"); (1,3,"abd"); (7,1,"abq"); (1,1,"aam"); (9,5,"abl"); (5,2,"abz"); (6,2,"aap"); (8,3,"abv"); (5,6,"aak"); (8,2,"aaf"); (4,4,"aap"); (5,3,"abd"); (4,5,"aaj"); (8,5,"ab6"); (3,6,"abr"); (5,4,"abj"); (8,6,"abr"); (2,1,"aak"); (5,7,"abu"); (1,7,"abn"); (8,7,"aa4"); (2,5,"aag"); (9,3,"aaf"); (4,2,"aab"); (3,7,"aah"); (7,6,"abt"); (6,7,"aac"); (9,7,"abe"); (3,1,"ab4"); (8,4,"aap"); (6,1,"abk"); (8,1,"aay"); (3,3,"aal"); (2,4,"abf"); (2,2,"abu"); (3,5,"aaj"); (1,5,"aaz"); (9,6,"aad"); (7,4,"ab5")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(4,9,"abk"); (6,1,"aa7"); (6,2,"abo"); (6,6,"abb"); (3,7,"aae"); (4,1,"abg"); (6,4,"abw"); (2,9,"aas"); (2,7,"aa3"); (4,6,"aar"); (2,3,"abm"); (7,7,"aag"); (1,9,"abi"); (5,6,"abd"); (1,5,"aaf"); (4,3,"aba"); (1,4,"abn"); (3,4,"aas"); (3,2,"aa3"); (7,4,"aag"); (5,5,"aa7"); (3,1,"abd"); (1,7,"abq"); (1,1,"aam"); (5,9,"abl"); (2,5,"abz"); (2,6,"aap"); (3,8,"abv"); (6,5,"aak"); (2,8,"aaf"); (4,4,"aap"); (3,5,"abd"); (5,4,"aaj"); (5,8,"ab6"); (6,3,"abr"); (4,5,"abj"); (6,8,"abr"); (1,2,"aak"); (7,5,"abu"); (7,1,"abn"); (7,8,"aa4"); (5,2,"aag"); (3,9,"aaf"); (2,4,"aab"); (7,3,"aah"); (6,7,"abt"); (7,6,"aac"); (7,9,"abe"); (1,3,"ab4"); (4,8,"aap"); (1,6,"abk"); (1,8,"aay"); (3,3,"aal"); (4,2,"abf"); (2,2,"abu"); (5,3,"aaj"); (5,1,"aaz"); (6,9,"aad"); (4,7,"ab5")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(1,5,"aae"); (6,1,"abh"); (1,3,"aby"); (5,4,"abs"); (9,4,"aau"); (2,4,"ab7"); (10,3,"aam"); (10,4,"aav"); (3,2,"aah"); (10,2,"aai"); (6,2,"aax"); (3,1,"abo"); (9,2,"abb"); (5,1,"aar"); (10,5,"aau"); (7,3,"abo"); (8,4,"aa5"); (4,4,"aar"); (8,2,"aba"); (4,1,"aaz"); (4,3,"aam"); (7,2,"aby"); (5,5,"ab4"); (3,5,"aag"); (8,3,"aai"); (5,2,"aau"); (9,1,"ab6"); (5,3,"abt"); (4,5,"abs"); (1,4,"aau"); (9,5,"aa5"); (9,3,"abi"); (1,2,"aaa"); (2,2,"aat"); (4,2,"abt"); (8,5,"aah"); (6,4,"aaw"); (3,3,"aab"); (7,4,"abv"); (8,1,"aa4"); (10,1,"abg"); (3,4,"abe"); (1,1,"abo"); (2,1,"abx"); (2,5,"abe"); (7,5,"aao"); (7,1,"abs"); (6,3,"aan")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(5,1,"aae"); (1,6,"abh"); (3,1,"aby"); (4,5,"abs"); (4,9,"aau"); (4,2,"ab7"); (3,10,"aam"); (4,10,"aav"); (2,3,"aah"); (2,10,"aai"); (2,6,"aax"); (1,3,"abo"); (2,9,"abb"); (1,5,"aar"); (5,10,"aau"); (3,7,"abo"); (4,8,"aa5"); (4,4,"aar"); (2,8,"aba"); (1,4,"aaz"); (3,4,"aam"); (2,7,"aby"); (5,5,"ab4"); (5,3,"aag"); (3,8,"aai"); (2,5,"aau"); (1,9,"ab6"); (3,5,"abt"); (5,4,"abs"); (4,1,"aau"); (5,9,"aa5"); (3,9,"abi"); (2,1,"aaa"); (2,2,"aat"); (2,4,"abt"); (5,8,"aah"); (4,6,"aaw"); (3,3,"aab"); (4,7,"abv"); (1,8,"aa4"); (1,10,"abg"); (4,3,"abe"); (1,1,"abo"); (1,2,"abx"); (5,2,"abe"); (5,7,"aao"); (1,7,"abs"); (3,6,"aan")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(8,5,"aah"); (10,3,"aam"); (9,2,"abb"); (4,2,"abt"); (8,3,"aai"); (2,1,"abx"); (9,3,"abi"); (5,5,"ab4"); (7,5,"aao"); (5,1,"aar"); (3,2,"aah"); (7,1,"abs"); (6,2,"aax"); (2,4,"ab7"); (6,3,"aan"); (6,4,"aaw"); (3,3,"aab"); (5,3,"abt"); (8,1,"aa4"); (3,1,"abo"); (5,2,"aau"); (3,4,"abe"); (6,1,"abh"); (2,5,"abe"); (4,3,"aam"); (4,1,"aaz"); (8,2,"aba"); (3,5,"aag"); (7,2,"aby"); (9,5,"aa5"); (10,5,"aau"); (2,2,"aat"); (4,4,"aar"); (7,4,"abv"); (1,5,"aae"); (1,2,"aaa"); (5,4,"abs"); (6,5,"ab4"); (9,1,"ab6"); (10,1,"abg"); (9,4,"aau"); (4,5,"abs"); (8,4,"aa5"); (10,4,"aav"); (1,1,"abo"); (2,3,"aby"); (1,4,"aau"); (10,2,"aai")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(5,8,"aah"); (3,10,"aam"); (2,9,"abb"); (2,4,"abt"); (3,8,"aai"); (1,2,"abx"); (3,9,"abi"); (5,5,"ab4"); (5,7,"aao"); (1,5,"aar"); (2,3,"aah"); (1,7,"abs"); (2,6,"aax"); (4,2,"ab7"); (3,6,"aan"); (4,6,"aaw"); (3,3,"aab"); (3,5,"abt"); (1,8,"aa4"); (1,3,"abo"); (2,5,"aau"); (4,3,"abe"); (1,6,"abh"); (5,2,"abe"); (3,4,"aam"); (1,4,"aaz"); (2,8,"aba"); (5,3,"aag"); (2,7,"aby"); (5,9,"aa5"); (5,10,"aau"); (2,2,"aat"); (4,4,"aar"); (4,7,"abv"); (5,1,"aae"); (2,1,"aaa"); (4,5,"abs"); (5,6,"ab4"); (1,9,"ab6"); (1,10,"abg"); (4,9,"aau"); (5,4,"abs"); (4,8,"aa5"); (4,10,"aav"); (1,1,"abo"); (3,2,"aby"); (4,1,"aau"); (2,10,"aai")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(3,4,"abe"); (10,4,"aav"); (6,1,"abh"); (3,2,"aah"); (4,1,"aaz"); (7,1,"abs"); (7,5,"aao"); (8,2,"aba"); (9,3,"abi"); (1,4,"aau"); (2,3,"aby"); (6,3,"aan"); (7,3,"abo"); (8,3,"aai"); (4,4,"aar"); (1,1,"abo"); (2,5,"abe"); (1,3,"aby"); (7,4,"abv"); (4,5,"abs"); (8,1,"aa4"); (7,2,"aby"); (3,5,"aag"); (1,2,"aaa"); (9,1,"ab6"); (5,5,"ab4"); (5,3,"abt"); (2,2,"aat"); (5,1,"aar"); (10,5,"aau"); (8,4,"aa5"); (6,4,"aaw"); (10,2,"aai"); (10,1,"abg"); (5,2,"aau"); (9,4,"aau"); (8,5,"aah"); (2,4,"ab7"); (2,1,"abx"); (5,4,"abs"); (1,5,"aae"); (9,5,"aa5"); (6,2,"aax"); (4,3,"aam"); (3,3,"aab"); (6,5,"ab4"); (4,2,"abt"); (9,2,"abb")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(4,3,"abe"); (4,10,"aav"); (1,6,"abh"); (2,3,"aah"); (1,4,"aaz"); (1,7,"abs"); (5,7,"aao"); (2,8,"aba"); (3,9,"abi"); (4,1,"aau"); (3,2,"aby"); (3,6,"aan"); (3,7,"abo"); (3,8,"aai"); (4,4,"aar"); (1,1,"abo"); (5,2,"abe"); (3,1,"aby"); (4,7,"abv"); (5,4,"abs"); (1,8,"aa4"); (2,7,"aby"); (5,3,"aag"); (2,1,"aaa"); (1,9,"ab6"); (5,5,"ab4"); (3,5,"abt"); (2,2,"aat"); (1,5,"aar"); (5,10,"aau"); (4,8,"aa5"); (4,6,"aaw"); (2,10,"aai"); (1,10,"abg"); (2,5,"aau"); (4,9,"aau"); (5,8,"aah"); (4,2,"ab7"); (1,2,"abx"); (4,5,"abs"); (5,1,"aae"); (5,9,"aa5"); (2,6,"aax"); (3,4,"aam"); (3,3,"aab"); (5,6,"ab4"); (2,4,"abt"); (2,9,"abb")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(3,3,"aab"); (2,3,"aby"); (10,1,"abg"); (2,1,"abx"); (5,4,"abs"); (1,2,"aaa"); (2,4,"ab7"); (8,4,"aa5"); (4,2,"abt"); (5,2,"aau"); (9,4,"aau"); (2,5,"abe"); (2,2,"aat"); (8,1,"aa4"); (7,2,"aby"); (10,2,"aai"); (5,5,"ab4"); (10,3,"aam"); (3,4,"abe"); (6,4,"aaw"); (5,1,"aar"); (9,3,"abi"); (9,1,"ab6"); (4,1,"aaz"); (10,4,"aav"); (3,1,"abo"); (10,5,"aau"); (4,5,"abs"); (7,1,"abs"); (7,4,"abv"); (7,5,"aao"); (1,5,"aae"); (1,4,"aau"); (1,3,"aby"); (6,5,"ab4"); (4,3,"aam"); (8,3,"aai"); (3,2,"aah"); (6,3,"aan"); (8,2,"aba"); (7,3,"abo"); (9,2,"abb"); (1,1,"abo"); (3,5,"aag"); (4,4,"aar"); (6,2,"aax"); (5,3,"abt")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(3,3,"aab"); (3,2,"aby"); (1,10,"abg"); (1,2,"abx"); (4,5,"abs"); (2,1,"aaa"); (4,2,"ab7"); (4,8,"aa5"); (2,4,"abt"); (2,5,"aau"); (4,9,"aau"); (5,2,"abe"); (2,2,"aat"); (1,8,"aa4"); (2,7,"aby"); (2,10,"aai"); (5,5,"ab4"); (3,10,"aam"); (4,3,"abe"); (4,6,"aaw"); (1,5,"aar"); (3,9,"abi"); (1,9,"ab6"); (1,4,"aaz"); (4,10,"aav"); (1,3,"abo"); (5,10,"aau"); (5,4,"abs"); (1,7,"abs"); (4,7,"abv"); (5,7,"aao"); (5,1,"aae"); (4,1,"aau"); (3,1,"aby"); (5,6,"ab4"); (3,4,"aam"); (3,8,"aai"); (2,3,"aah"); (3,6,"aan"); (2,8,"aba"); (3,7,"abo"); (2,9,"abb"); (1,1,"abo"); (5,3,"aag"); (4,4,"aar"); (2,6,"aax"); (3,5,"abt")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(6,4,"aaw"); (1,3,"aby"); (6,1,"abh"); (2,2,"aat"); (8,2,"aba"); (4,5,"abs"); (3,2,"aah"); (3,1,"abo"); (1,1,"abo"); (5,2,"aau"); (7,4,"abv"); (8,3,"aai"); (5,1,"aar"); (5,3,"abt"); (7,2,"aby"); (8,5,"aah"); (3,5,"aag"); (10,4,"aav"); (2,4,"ab7"); (9,4,"aau"); (6,2,"aax"); (3,3,"aab"); (10,1,"abg"); (4,2,"abt"); (6,3,"aan"); (8,4,"aa5"); (4,4,"aar"); (1,2,"aaa"); (7,1,"abs"); (4,3,"aam"); (2,1,"abx"); (8,1,"aa4"); (9,2,"abb"); (6,5,"ab4"); (10,3,"aam"); (9,1,"ab6"); (4,1,"aaz"); (7,5,"aao"); (5,5,"ab4"); (5,4,"abs"); (2,5,"abe"); (7,3,"abo"); (10,5,"aau"); (3,4,"abe"); (2,3,"aby"); (9,5,"aa5"); (1,4,"aau"); (9,3,"abi")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(4,6,"aaw"); (3,1,"aby"); (1,6,"abh"); (2,2,"aat"); (2,8,"aba"); (5,4,"abs"); (2,3,"aah"); (1,3,"abo"); (1,1,"abo"); (2,5,"aau"); (4,7,"abv"); (3,8,"aai"); (1,5,"aar"); (3,5,"abt"); (2,7,"aby"); (5,8,"aah"); (5,3,"aag"); (4,10,"aav"); (4,2,"ab7"); (4,9,"aau"); (2,6,"aax"); (3,3,"aab"); (1,10,"abg"); (2,4,"abt"); (3,6,"aan"); (4,8,"aa5"); (4,4,"aar"); (2,1,"aaa"); (1,7,"abs"); (3,4,"aam"); (1,2,"abx"); (1,8,"aa4"); (2,9,"abb"); (5,6,"ab4"); (3,10,"aam"); (1,9,"ab6"); (1,4,"aaz"); (5,7,"aao"); (5,5,"ab4"); (4,5,"abs"); (5,2,"abe"); (3,7,"abo"); (5,10,"aau"); (4,3,"abe"); (3,2,"aby"); (5,9,"aa5"); (4,1,"aau"); (3,9,"abi")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(8,2,"aas"); (3,1,"aap"); (6,4,"aa7"); (2,1,"aaz"); (7,3,"aat"); (5,4,"abi"); (4,1,"aba"); (2,4,"aan"); (1,2,"aa3"); (8,3,"ab4"); (6,3,"aar"); (4,4,"abs"); (8,1,"abh"); (7,4,"abx"); (1,4,"abc"); (3,3,"ab3"); (6,2,"aao"); (2,3,"abn"); (4,3,"aat"); (5,2,"aah"); (7,2,"aas"); (7,1,"abm"); (3,2,"abj"); (4,2,"aa7"); (5,1,"aam"); (2,2,"ab3"); (6,1,"aa4"); (5,3,"ab3")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(2,8,"aas"); (1,3,"aap"); (4,6,"aa7"); (1,2,"aaz"); (3,7,"aat"); (4,5,"abi"); (1,4,"aba"); (4,2,"aan"); (2,1,"aa3"); (3,8,"ab4"); (3,6,"aar"); (4,4,"abs"); (1,8,"abh"); (4,7,"abx"); (4,1,"abc"); (3,3,"ab3"); (2,6,"aao"); (3,2,"abn"); (3,4,"aat"); (2,5,"aah"); (2,7,"aas"); (1,7,"abm"); (2,3,"abj"); (2,4,"aa7"); (1,5,"aam"); (2,2,"ab3"); (1,6,"aa4"); (3,5,"ab3")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(2,3,"abn"); (8,2,"aas"); (6,4,"aa7"); (4,3,"aat"); (6,3,"aar"); (2,2,"ab3"); (5,2,"aah"); (7,3,"aat"); (8,3,"ab4"); (1,3,"abv"); (1,1,"aav"); (7,1,"abm"); (1,4,"abc"); (2,4,"aan"); (3,2,"abj"); (2,1,"aaz"); (1,2,"aa3"); (8,4,"abn"); (4,1,"aba"); (7,4,"abx"); (6,1,"aa4"); (3,3,"ab3"); (6,2,"aao"); (5,4,"abi"); (5,3,"ab3"); (3,1,"aap"); (7,2,"aas"); (4,4,"abs"); (3,4,"abi")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(3,2,"abn"); (2,8,"aas"); (4,6,"aa7"); (3,4,"aat"); (3,6,"aar"); (2,2,"ab3"); (2,5,"aah"); (3,7,"aat"); (3,8,"ab4"); (3,1,"abv"); (1,1,"aav"); (1,7,"abm"); (4,1,"abc"); (4,2,"aan"); (2,3,"abj"); (1,2,"aaz"); (2,1,"aa3"); (4,8,"abn"); (1,4,"aba"); (4,7,"abx"); (1,6,"aa4"); (3,3,"ab3"); (2,6,"aao"); (4,5,"abi"); (3,5,"ab3"); (1,3,"aap"); (2,7,"aas"); (4,4,"abs"); (4,3,"abi")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(7,4,"abx"); (6,3,"aar"); (7,2,"aas"); (8,3,"ab4"); (1,4,"abc"); (4,1,"aba"); (8,2,"aas"); (3,4,"abi"); (4,3,"aat"); (2,2,"ab3"); (3,1,"aap"); (7,3,"aat"); (1,1,"aav"); (8,4,"abn"); (6,4,"aa7"); (5,2,"aah"); (6,2,"aao"); (1,3,"abv"); (4,2,"aa7"); (4,4,"abs"); (1,2,"aa3"); (2,3,"abn"); (7,1,"abm"); (3,3,"ab3"); (2,4,"aan"); (2,1,"aaz"); (3,2,"abj"); (5,4,"abi"); (5,3,"ab3"); (5,1,"aam"); (6,1,"aa4")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(4,7,"abx"); (3,6,"aar"); (2,7,"aas"); (3,8,"ab4"); (4,1,"abc"); (1,4,"aba"); (2,8,"aas"); (4,3,"abi"); (3,4,"aat"); (2,2,"ab3"); (1,3,"aap"); (3,7,"aat"); (1,1,"aav"); (4,8,"abn"); (4,6,"aa7"); (2,5,"aah"); (2,6,"aao"); (3,1,"abv"); (2,4,"aa7"); (4,4,"abs"); (2,1,"aa3"); (3,2,"abn"); (1,7,"abm"); (3,3,"ab3"); (4,2,"aan"); (1,2,"aaz"); (2,3,"abj"); (4,5,"abi"); (3,5,"ab3"); (1,5,"aam"); (1,6,"aa4")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(1,1,"aav"); (7,1,"abm"); (4,4,"abs"); (3,4,"abi"); (5,1,"aam"); (2,3,"abn"); (8,3,"ab4"); (4,3,"aat"); (1,4,"abc"); (3,2,"abj"); (8,4,"abn"); (4,2,"aa7"); (6,4,"aa7"); (8,1,"abh"); (1,3,"abv"); (1,2,"aa3"); (5,2,"aah"); (6,3,"aar"); (5,4,"abi"); (7,4,"abx"); (2,4,"aan"); (4,1,"aba"); (2,1,"aaz"); (7,2,"aas"); (3,3,"ab3"); (7,3,"aat"); (6,2,"aao"); (2,2,"ab3"); (3,1,"aap")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aav"); (1,7,"abm"); (4,4,"abs"); (4,3,"abi"); (1,5,"aam"); (3,2,"abn"); (3,8,"ab4"); (3,4,"aat"); (4,1,"abc"); (2,3,"abj"); (4,8,"abn"); (2,4,"aa7"); (4,6,"aa7"); (1,8,"abh"); (3,1,"abv"); (2,1,"aa3"); (2,5,"aah"); (3,6,"aar"); (4,5,"abi"); (4,7,"abx"); (4,2,"aan"); (1,4,"aba"); (1,2,"aaz"); (2,7,"aas"); (3,3,"ab3"); (3,7,"aat"); (2,6,"aao"); (2,2,"ab3"); (1,3,"aap")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(3,2,"abj"); (8,3,"ab4"); (2,1,"aaz"); (2,4,"aan"); (7,2,"aas"); (7,1,"abm"); (1,2,"aa3"); (1,4,"abc"); (5,3,"ab3"); (5,1,"aam"); (3,4,"abi"); (5,4,"abi"); (4,2,"aa7"); (8,4,"abn"); (6,1,"aa4"); (8,1,"abh"); (3,1,"aap"); (4,4,"abs"); (6,2,"aao"); (1,1,"aav"); (7,4,"abx"); (4,3,"aat"); (2,2,"ab3"); (6,3,"aar"); (1,3,"abv"); (7,3,"aat"); (4,1,"aba"); (3,3,"ab3"); (5,2,"aah"); (8,2,"aas")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(2,3,"abj"); (3,8,"ab4"); (1,2,"aaz"); (4,2,"aan"); (2,7,"aas"); (1,7,"abm"); (2,1,"aa3"); (4,1,"abc"); (3,5,"ab3"); (1,5,"aam"); (4,3,"abi"); (4,5,"abi"); (2,4,"aa7"); (4,8,"abn"); (1,6,"aa4"); (1,8,"abh"); (1,3,"aap"); (4,4,"abs"); (2,6,"aao"); (1,1,"aav"); (4,7,"abx"); (3,4,"aat"); (2,2,"ab3"); (3,6,"aar"); (3,1,"abv"); (3,7,"aat"); (1,4,"aba"); (3,3,"ab3"); (2,5,"aah"); (2,8,"aas")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(4,1,"aa5"); (1,2,"abz"); (11,2,"aas"); (5,1,"abo"); (9,2,"abk"); (6,2,"aag"); (3,2,"abn"); (9,1,"abz"); (1,1,"aai"); (2,2,"aan"); (4,3,"aau"); (6,3,"aah"); (12,1,"ab3"); (7,2,"aar"); (10,1,"aan"); (2,1,"aaz"); (8,3,"aay"); (4,2,"abz"); (12,2,"abx"); (1,3,"abn"); (5,3,"abv"); (11,3,"aao"); (12,3,"aau"); (11,1,"aad"); (2,3,"aaf"); (9,3,"abp"); (8,2,"abz"); (3,3,"abn"); (3,1,"abt"); (8,1,"abf"); (7,3,"aap"); (7,1,"aat"); (10,2,"aa4"); (5,2,"aad"); (6,1,"abp")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,4,"aa5"); (2,1,"abz"); (2,11,"aas"); (1,5,"abo"); (2,9,"abk"); (2,6,"aag"); (2,3,"abn"); (1,9,"abz"); (1,1,"aai"); (2,2,"aan"); (3,4,"aau"); (3,6,"aah"); (1,12,"ab3"); (2,7,"aar"); (1,10,"aan"); (1,2,"aaz"); (3,8,"aay"); (2,4,"abz"); (2,12,"abx"); (3,1,"abn"); (3,5,"abv"); (3,11,"aao"); (3,12,"aau"); (1,11,"aad"); (3,2,"aaf"); (3,9,"abp"); (2,8,"abz"); (3,3,"abn"); (1,3,"abt"); (1,8,"abf"); (3,7,"aap"); (1,7,"aat"); (2,10,"aa4"); (2,5,"aad"); (1,6,"abp")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(10,3,"aab"); (2,2,"aan"); (11,3,"aao"); (3,3,"abn"); (4,1,"aa5"); (4,3,"aau"); (8,3,"aay"); (10,1,"aan"); (9,2,"abk"); (12,2,"abx"); (7,3,"aap"); (5,3,"abv"); (6,1,"abp"); (6,2,"aag"); (1,2,"abz"); (8,1,"abf"); (1,1,"aai"); (1,3,"abn"); (9,1,"abz"); (4,2,"abz"); (11,1,"aad"); (5,1,"abo"); (5,2,"aad"); (6,3,"aah"); (3,1,"abt"); (12,1,"ab3"); (12,3,"aau"); (7,1,"aat"); (8,2,"abz"); (9,3,"abp"); (2,3,"aaf"); (11,2,"aas"); (10,2,"aa4")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(3,10,"aab"); (2,2,"aan"); (3,11,"aao"); (3,3,"abn"); (1,4,"aa5"); (3,4,"aau"); (3,8,"aay"); (1,10,"aan"); (2,9,"abk"); (2,12,"abx"); (3,7,"aap"); (3,5,"abv"); (1,6,"abp"); (2,6,"aag"); (2,1,"abz"); (1,8,"abf"); (1,1,"aai"); (3,1,"abn"); (1,9,"abz"); (2,4,"abz"); (1,11,"aad"); (1,5,"abo"); (2,5,"aad"); (3,6,"aah"); (1,3,"abt"); (1,12,"ab3"); (3,12,"aau"); (1,7,"aat"); (2,8,"abz"); (3,9,"abp"); (3,2,"aaf"); (2,11,"aas"); (2,10,"aa4")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(12,1,"ab3"); (3,3,"abn"); (11,2,"aas"); (2,2,"aan"); (9,1,"abz"); (12,3,"aau"); (6,1,"abp"); (7,1,"aat"); (11,1,"aad"); (3,1,"abt"); (4,3,"aau"); (3,2,"abn"); (1,3,"abn"); (1,1,"aai"); (7,2,"aar"); (8,1,"abf"); (10,1,"aan"); (10,2,"aa4"); (1,2,"abz"); (11,3,"aao"); (8,3,"aay"); (2,1,"aaz"); (8,2,"abz"); (12,2,"abx"); (9,3,"abp"); (5,2,"aad"); (5,1,"abo"); (10,3,"aab"); (5,3,"abv"); (4,1,"aa5"); (7,3,"aap"); (4,2,"abz")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,12,"ab3"); (3,3,"abn"); (2,11,"aas"); (2,2,"aan"); (1,9,"abz"); (3,12,"aau"); (1,6,"abp"); (1,7,"aat"); (1,11,"aad"); (1,3,"abt"); (3,4,"aau"); (2,3,"abn"); (3,1,"abn"); (1,1,"aai"); (2,7,"aar"); (1,8,"abf"); (1,10,"aan"); (2,10,"aa4"); (2,1,"abz"); (3,11,"aao"); (3,8,"aay"); (1,2,"aaz"); (2,8,"abz"); (2,12,"abx"); (3,9,"abp"); (2,5,"aad"); (1,5,"abo"); (3,10,"aab"); (3,5,"abv"); (1,4,"aa5"); (3,7,"aap"); (2,4,"abz")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(8,2,"abz"); (4,1,"aa5"); (10,3,"aab"); (10,2,"aa4"); (5,2,"aad"); (4,3,"aau"); (9,3,"abp"); (3,2,"abn"); (1,1,"aai"); (2,3,"aaf"); (6,1,"abp"); (9,1,"abz"); (11,3,"aao"); (1,2,"abz"); (12,1,"ab3"); (7,3,"aap"); (6,3,"aah"); (9,2,"abk"); (2,1,"aaz"); (11,1,"aad"); (8,1,"abf"); (5,1,"abo"); (8,3,"aay"); (7,2,"aar"); (10,1,"aan"); (2,2,"aan"); (5,3,"abv"); (3,3,"abn"); (3,1,"abt"); (6,2,"aag"); (7,1,"aat"); (1,3,"abn"); (12,2,"abx")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(2,8,"abz"); (1,4,"aa5"); (3,10,"aab"); (2,10,"aa4"); (2,5,"aad"); (3,4,"aau"); (3,9,"abp"); (2,3,"abn"); (1,1,"aai"); (3,2,"aaf"); (1,6,"abp"); (1,9,"abz"); (3,11,"aao"); (2,1,"abz"); (1,12,"ab3"); (3,7,"aap"); (3,6,"aah"); (2,9,"abk"); (1,2,"aaz"); (1,11,"aad"); (1,8,"abf"); (1,5,"abo"); (3,8,"aay"); (2,7,"aar"); (1,10,"aan"); (2,2,"aan"); (3,5,"abv"); (3,3,"abn"); (1,3,"abt"); (2,6,"aag"); (1,7,"aat"); (3,1,"abn"); (2,12,"abx")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(5,2,"aad"); (2,1,"aaz"); (7,3,"aap"); (1,3,"abn"); (12,3,"aau"); (2,3,"aaf"); (7,1,"aat"); (10,3,"aab"); (9,1,"abz"); (3,3,"abn"); (9,2,"abk"); (4,1,"aa5"); (11,3,"aao"); (11,2,"aas"); (4,2,"abz"); (11,1,"aad"); (12,2,"abx"); (8,1,"abf"); (10,2,"aa4"); (1,2,"abz"); (12,1,"ab3"); (4,3,"aau"); (9,3,"abp"); (3,1,"abt"); (7,2,"aar"); (1,1,"aai"); (6,1,"abp"); (10,1,"aan"); (2,2,"aan"); (6,2,"aag"); (6,3,"aah"); (8,3,"aay")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(2,5,"aad"); (1,2,"aaz"); (3,7,"aap"); (3,1,"abn"); (3,12,"aau"); (3,2,"aaf"); (1,7,"aat"); (3,10,"aab"); (1,9,"abz"); (3,3,"abn"); (2,9,"abk"); (1,4,"aa5"); (3,11,"aao"); (2,11,"aas"); (2,4,"abz"); (1,11,"aad"); (2,12,"abx"); (1,8,"abf"); (2,10,"aa4"); (2,1,"abz"); (1,12,"ab3"); (3,4,"aau"); (3,9,"abp"); (1,3,"abt"); (2,7,"aar"); (1,1,"aai"); (1,6,"abp"); (1,10,"aan"); (2,2,"aan"); (2,6,"aag"); (3,6,"aah"); (3,8,"aay")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(1,2,"abc"); (2,1,"abt"); (6,2,"aa4"); (8,2,"ab3"); (1,3,"abb"); (8,3,"abq"); (2,3,"aaw"); (3,1,"ab7"); (4,3,"abk"); (3,2,"aa5"); (4,1,"abh"); (7,2,"aa6"); (1,1,"abk"); (8,1,"aaj"); (5,1,"aab"); (3,3,"aay"); (2,2,"aaq"); (6,3,"aaa"); (6,1,"aah"); (7,3,"ab7"); (4,2,"aae")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(2,1,"abc"); (1,2,"abt"); (2,6,"aa4"); (2,8,"ab3"); (3,1,"abb"); (3,8,"abq"); (3,2,"aaw"); (1,3,"ab7"); (3,4,"abk"); (2,3,"aa5"); (1,4,"abh"); (2,7,"aa6"); (1,1,"abk"); (1,8,"aaj"); (1,5,"aab"); (3,3,"aay"); (2,2,"aaq"); (3,6,"aaa"); (1,6,"aah"); (3,7,"ab7"); (2,4,"aae")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(3,3,"aay"); (3,2,"aa5"); (8,2,"ab3"); (7,3,"ab7"); (5,1,"aab"); (5,3,"abd"); (4,3,"abk"); (8,1,"aaj"); (2,2,"aaq"); (5,2,"aay"); (4,2,"aae"); (6,1,"aah"); (7,1,"abe"); (8,3,"abq"); (2,1,"abt"); (1,3,"abb"); (2,3,"aaw"); (6,3,"aaa"); (7,2,"aa6"); (1,2,"abc")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(3,3,"aay"); (2,3,"aa5"); (2,8,"ab3"); (3,7,"ab7"); (1,5,"aab"); (3,5,"abd"); (3,4,"abk"); (1,8,"aaj"); (2,2,"aaq"); (2,5,"aay"); (2,4,"aae"); (1,6,"aah"); (1,7,"abe"); (3,8,"abq"); (1,2,"abt"); (3,1,"abb"); (3,2,"aaw"); (3,6,"aaa"); (2,7,"aa6"); (2,1,"abc")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(2,1,"abt"); (8,3,"abq"); (2,3,"aaw"); (6,3,"aaa"); (7,3,"ab7"); (3,2,"aa5"); (2,2,"aaq"); (6,2,"aa4"); (4,1,"abh"); (5,1,"aab"); (5,3,"abd"); (1,3,"abb"); (7,1,"abe"); (8,2,"ab3"); (5,2,"aay"); (1,1,"abk"); (4,2,"aae"); (6,1,"aah"); (8,1,"aaj"); (7,2,"aa6"); (4,3,"abk"); (3,1,"ab7"); (3,3,"aay")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,2,"abt"); (3,8,"abq"); (3,2,"aaw"); (3,6,"aaa"); (3,7,"ab7"); (2,3,"aa5"); (2,2,"aaq"); (2,6,"aa4"); (1,4,"abh"); (1,5,"aab"); (3,5,"abd"); (3,1,"abb"); (1,7,"abe"); (2,8,"ab3"); (2,5,"aay"); (1,1,"abk"); (2,4,"aae"); (1,6,"aah"); (1,8,"aaj"); (2,7,"aa6"); (3,4,"abk"); (1,3,"ab7"); (3,3,"aay")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(3,2,"aa5"); (5,1,"aab"); (7,3,"ab7"); (8,3,"abq"); (8,2,"ab3"); (4,3,"abk"); (6,3,"aaa"); (2,3,"aaw"); (7,2,"aa6"); (1,2,"abc"); (3,3,"aay"); (6,1,"aah"); (1,3,"abb"); (8,1,"aaj"); (6,2,"aa4"); (1,1,"abk"); (5,3,"abd"); (5,2,"aay"); (4,1,"abh"); (4,2,"aae"); (3,1,"ab7")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(2,3,"aa5"); (1,5,"aab"); (3,7,"ab7"); (3,8,"abq"); (2,8,"ab3"); (3,4,"abk"); (3,6,"aaa"); (3,2,"aaw"); (2,7,"aa6"); (2,1,"abc"); (3,3,"aay"); (1,6,"aah"); (3,1,"abb"); (1,8,"aaj"); (2,6,"aa4"); (1,1,"abk"); (3,5,"abd"); (2,5,"aay"); (1,4,"abh"); (2,4,"aae"); (1,3,"ab7")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(1,3,"abb"); (2,1,"abt"); (3,1,"ab7"); (5,3,"abd"); (8,3,"abq"); (6,3,"aaa"); (4,1,"abh"); (6,1,"aah"); (6,2,"aa4"); (3,2,"aa5"); (2,2,"aaq"); (7,2,"aa6"); (4,2,"aae"); (8,1,"aaj"); (7,3,"ab7"); (1,1,"abk"); (7,1,"abe"); (5,1,"aab"); (3,3,"aay"); (5,2,"aay"); (1,2,"abc")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(3,1,"abb"); (1,2,"abt"); (1,3,"ab7"); (3,5,"abd"); (3,8,"abq"); (3,6,"aaa"); (1,4,"abh"); (1,6,"aah"); (2,6,"aa4"); (2,3,"aa5"); (2,2,"aaq"); (2,7,"aa6"); (2,4,"aae"); (1,8,"aaj"); (3,7,"ab7"); (1,1,"abk"); (1,7,"abe"); (1,5,"aab"); (3,3,"aay"); (2,5,"aay"); (2,1,"abc")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(10,2,"aa6"); (11,5,"abn"); (2,1,"aag"); (7,4,"aay"); (4,1,"ab3"); (10,3,"abp"); (11,1,"ab6"); (8,1,"aak"); (1,1,"abc"); (3,2,"abw"); (1,2,"aar"); (7,2,"aad"); (12,3,"ab3"); (8,3,"abb"); (5,3,"aas"); (6,6,"abv"); (11,6,"abu"); (6,2,"abk"); (8,4,"aa7"); (2,5,"abr"); (4,2,"aaj"); (1,4,"abh"); (12,4,"abd"); (9,3,"abl"); (6,4,"abv"); (5,4,"abj"); (10,6,"abi"); (2,6,"aao"); (1,5,"abq"); (11,2,"abb"); (4,6,"abz"); (9,2,"aba"); (4,5,"aav"); (7,3,"aaw"); (2,3,"ab4"); (12,6,"abl"); (3,3,"abg"); (8,5,"aar"); (12,5,"aag"); (11,3,"aak"); (7,1,"ab3"); (5,5,"aak"); (12,1,"abv"); (1,6,"abb"); (9,6,"aab"); (3,5,"aak"); (8,2,"aa4"); (10,5,"abz"); (4,4,"aai"); (11,4,"aan"); (10,4,"aaj"); (8,6,"aal"); (3,1,"aa7"); (7,5,"aa2"); (6,5,"abg"); (2,4,"aab"); (3,4,"abn"); (1,3,"abi"); (12,2,"abo"); (6,3,"aay"); (9,4,"abw"); (6,1,"aaq"); (7,6,"abp"); (2,2,"aa6"); (3,6,"abz"); (5,1,"abk"); (5,6,"abp"); (10,1,"aaa"); (4,3,"aae"); (5,2,"abx")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(2,10,"aa6"); (5,11,"abn"); (1,2,"aag"); (4,7,"aay"); (1,4,"ab3"); (3,10,"abp"); (1,11,"ab6"); (1,8,"aak"); (1,1,"abc"); (2,3,"abw"); (2,1,"aar"); (2,7,"aad"); (3,12,"ab3"); (3,8,"abb"); (3,5,"aas"); (6,6,"abv"); (6,11,"abu"); (2,6,"abk"); (4,8,"aa7"); (5,2,"abr"); (2,4,"aaj"); (4,1,"abh"); (4,12,"abd"); (3,9,"abl"); (4,6,"abv"); (4,5,"abj"); (6,10,"abi"); (6,2,"aao"); (5,1,"abq"); (2,11,"abb"); (6,4,"abz"); (2,9,"aba"); (5,4,"aav"); (3,7,"aaw"); (3,2,"ab4"); (6,12,"abl"); (3,3,"abg"); (5,8,"aar"); (5,12,"aag"); (3,11,"aak"); (1,7,"ab3"); (5,5,"aak"); (1,12,"abv"); (6,1,"abb"); (6,9,"aab"); (5,3,"aak"); (2,8,"aa4"); (5,10,"abz"); (4,4,"aai"); (4,11,"aan"); (4,10,"aaj"); (6,8,"aal"); (1,3,"aa7"); (5,7,"aa2"); (5,6,"abg"); (4,2,"aab"); (4,3,"abn"); (3,1,"abi"); (2,12,"abo"); (3,6,"aay"); (4,9,"abw"); (1,6,"aaq"); (6,7,"abp"); (2,2,"aa6"); (6,3,"abz"); (1,5,"abk"); (6,5,"abp"); (1,10,"aaa"); (3,4,"aae"); (2,5,"abx")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(3,4,"abn"); (4,3,"aae"); (7,5,"aa2"); (8,1,"aak"); (10,2,"aa6"); (11,4,"aan"); (6,2,"abk"); (9,6,"aab"); (11,2,"abb"); (12,5,"aag"); (5,5,"aak"); (12,2,"abo"); (12,4,"abd"); (6,6,"abv"); (2,6,"aao"); (1,2,"aar"); (6,5,"abg"); (2,4,"aab"); (10,4,"aaj"); (12,1,"abv"); (10,5,"abz"); (12,6,"abl"); (5,1,"abk"); (12,3,"ab3"); (3,3,"abg"); (7,3,"aaw"); (10,3,"abp"); (4,1,"ab3"); (1,1,"abc"); (11,1,"ab6"); (5,6,"abp"); (8,2,"aa4"); (5,2,"abx"); (10,6,"abi"); (7,2,"aad"); (6,1,"aaq"); (3,5,"aak"); (3,6,"abz"); (1,4,"abh"); (2,5,"abr"); (8,5,"aar"); (8,4,"aa7"); (1,3,"abi"); (10,1,"aaa"); (4,6,"abz"); (3,2,"abw"); (2,1,"aag"); (5,4,"abj"); (7,1,"ab3"); (9,2,"aba"); (6,3,"aay"); (1,5,"abq"); (11,5,"abn"); (7,6,"abp"); (6,4,"abv"); (2,2,"aa6"); (8,6,"aal"); (9,4,"abw"); (11,6,"abu"); (1,6,"abb"); (4,5,"aav"); (7,4,"aay"); (11,3,"aak"); (2,3,"ab4"); (9,3,"abl"); (5,3,"aas"); (3,1,"aa7"); (9,1,"ab3")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(4,3,"abn"); (3,4,"aae"); (5,7,"aa2"); (1,8,"aak"); (2,10,"aa6"); (4,11,"aan"); (2,6,"abk"); (6,9,"aab"); (2,11,"abb"); (5,12,"aag"); (5,5,"aak"); (2,12,"abo"); (4,12,"abd"); (6,6,"abv"); (6,2,"aao"); (2,1,"aar"); (5,6,"abg"); (4,2,"aab"); (4,10,"aaj"); (1,12,"abv"); (5,10,"abz"); (6,12,"abl"); (1,5,"abk"); (3,12,"ab3"); (3,3,"abg"); (3,7,"aaw"); (3,10,"abp"); (1,4,"ab3"); (1,1,"abc"); (1,11,"ab6"); (6,5,"abp"); (2,8,"aa4"); (2,5,"abx"); (6,10,"abi"); (2,7,"aad"); (1,6,"aaq"); (5,3,"aak"); (6,3,"abz"); (4,1,"abh"); (5,2,"abr"); (5,8,"aar"); (4,8,"aa7"); (3,1,"abi"); (1,10,"aaa"); (6,4,"abz"); (2,3,"abw"); (1,2,"aag"); (4,5,"abj"); (1,7,"ab3"); (2,9,"aba"); (3,6,"aay"); (5,1,"abq"); (5,11,"abn"); (6,7,"abp"); (4,6,"abv"); (2,2,"aa6"); (6,8,"aal"); (4,9,"abw"); (6,11,"abu"); (6,1,"abb"); (5,4,"aav"); (4,7,"aay"); (3,11,"aak"); (3,2,"ab4"); (3,9,"abl"); (3,5,"aas"); (1,3,"aa7"); (1,9,"ab3")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(5,1,"abk"); (4,4,"aai"); (4,3,"aae"); (6,4,"abv"); (7,2,"aad"); (5,5,"aak"); (11,2,"abb"); (3,5,"aak"); (2,3,"ab4"); (2,1,"aag"); (8,2,"aa4"); (11,1,"ab6"); (3,3,"abg"); (6,6,"abv"); (10,6,"abi"); (12,5,"aag"); (4,2,"aaj"); (6,3,"aay"); (8,1,"aak"); (9,4,"abw"); (5,4,"abj"); (8,5,"aar"); (1,3,"abi"); (6,1,"aaq"); (5,3,"aas"); (3,1,"aa7"); (2,4,"aab"); (11,5,"abn"); (2,5,"abr"); (7,5,"aa2"); (10,1,"aaa"); (2,6,"aao"); (5,6,"abp"); (12,4,"abd"); (9,2,"aba"); (3,2,"abw"); (9,3,"abl"); (3,6,"abz"); (11,3,"aak"); (12,3,"ab3"); (12,6,"abl"); (2,2,"aa6"); (8,4,"aa7"); (1,4,"abh"); (7,1,"ab3"); (12,2,"abo"); (9,1,"ab3"); (10,4,"aaj"); (9,5,"aag"); (10,3,"abp"); (11,6,"abu"); (5,2,"abx"); (1,5,"abq"); (7,3,"aaw"); (10,2,"aa6"); (12,1,"abv"); (4,5,"aav"); (3,4,"abn"); (9,6,"aab"); (10,5,"abz"); (4,1,"ab3"); (8,6,"aal"); (7,4,"aay"); (11,4,"aan"); (8,3,"abb"); (7,6,"abp"); (1,6,"abb"); (1,1,"abc"); (4,6,"abz"); (1,2,"aar")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,5,"abk"); (4,4,"aai"); (3,4,"aae"); (4,6,"abv"); (2,7,"aad"); (5,5,"aak"); (2,11,"abb"); (5,3,"aak"); (3,2,"ab4"); (1,2,"aag"); (2,8,"aa4"); (1,11,"ab6"); (3,3,"abg"); (6,6,"abv"); (6,10,"abi"); (5,12,"aag"); (2,4,"aaj"); (3,6,"aay"); (1,8,"aak"); (4,9,"abw"); (4,5,"abj"); (5,8,"aar"); (3,1,"abi"); (1,6,"aaq"); (3,5,"aas"); (1,3,"aa7"); (4,2,"aab"); (5,11,"abn"); (5,2,"abr"); (5,7,"aa2"); (1,10,"aaa"); (6,2,"aao"); (6,5,"abp"); (4,12,"abd"); (2,9,"aba"); (2,3,"abw"); (3,9,"abl"); (6,3,"abz"); (3,11,"aak"); (3,12,"ab3"); (6,12,"abl"); (2,2,"aa6"); (4,8,"aa7"); (4,1,"abh"); (1,7,"ab3"); (2,12,"abo"); (1,9,"ab3"); (4,10,"aaj"); (5,9,"aag"); (3,10,"abp"); (6,11,"abu"); (2,5,"abx"); (5,1,"abq"); (3,7,"aaw"); (2,10,"aa6"); (1,12,"abv"); (5,4,"aav"); (4,3,"abn"); (6,9,"aab"); (5,10,"abz"); (1,4,"ab3"); (6,8,"aal"); (4,7,"aay"); (4,11,"aan"); (3,8,"abb"); (6,7,"abp"); (6,1,"abb"); (1,1,"abc"); (6,4,"abz"); (2,1,"aar")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(11,6,"abu"); (2,6,"aao"); (7,3,"aaw"); (8,1,"aak"); (5,6,"abp"); (6,5,"abg"); (8,3,"abb"); (3,5,"aak"); (10,1,"aaa"); (6,6,"abv"); (4,4,"aai"); (12,3,"ab3"); (10,6,"abi"); (9,3,"abl"); (8,4,"aa7"); (12,6,"abl"); (12,1,"abv"); (5,2,"abx"); (9,2,"aba"); (7,2,"aad"); (3,6,"abz"); (6,3,"aay"); (11,5,"abn"); (11,1,"ab6"); (12,2,"abo"); (11,4,"aan"); (2,5,"abr"); (5,3,"aas"); (9,5,"aag"); (2,1,"aag"); (2,2,"aa6"); (11,3,"aak"); (4,6,"abz"); (2,4,"aab"); (4,3,"aae"); (3,1,"aa7"); (10,4,"aaj"); (4,5,"aav"); (5,1,"abk"); (9,6,"aab"); (4,2,"aaj"); (6,4,"abv"); (5,5,"aak"); (1,4,"abh"); (6,1,"aaq"); (1,1,"abc"); (7,1,"ab3"); (5,4,"abj"); (8,6,"aal"); (1,3,"abi"); (7,4,"aay"); (1,5,"abq"); (10,5,"abz"); (3,4,"abn"); (10,2,"aa6"); (3,2,"abw"); (8,2,"aa4"); (3,3,"abg"); (2,3,"ab4"); (11,2,"abb"); (4,1,"ab3"); (12,4,"abd"); (10,3,"abp"); (7,6,"abp"); (7,5,"aa2"); (9,1,"ab3"); (6,2,"abk"); (9,4,"abw"); (1,6,"abb"); (1,2,"aar"); (12,5,"aag")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(6,11,"abu"); (6,2,"aao"); (3,7,"aaw"); (1,8,"aak"); (6,5,"abp"); (5,6,"abg"); (3,8,"abb"); (5,3,"aak"); (1,10,"aaa"); (6,6,"abv"); (4,4,"aai"); (3,12,"ab3"); (6,10,"abi"); (3,9,"abl"); (4,8,"aa7"); (6,12,"abl"); (1,12,"abv"); (2,5,"abx"); (2,9,"aba"); (2,7,"aad"); (6,3,"abz"); (3,6,"aay"); (5,11,"abn"); (1,11,"ab6"); (2,12,"abo"); (4,11,"aan"); (5,2,"abr"); (3,5,"aas"); (5,9,"aag"); (1,2,"aag"); (2,2,"aa6"); (3,11,"aak"); (6,4,"abz"); (4,2,"aab"); (3,4,"aae"); (1,3,"aa7"); (4,10,"aaj"); (5,4,"aav"); (1,5,"abk"); (6,9,"aab"); (2,4,"aaj"); (4,6,"abv"); (5,5,"aak"); (4,1,"abh"); (1,6,"aaq"); (1,1,"abc"); (1,7,"ab3"); (4,5,"abj"); (6,8,"aal"); (3,1,"abi"); (4,7,"aay"); (5,1,"abq"); (5,10,"abz"); (4,3,"abn"); (2,10,"aa6"); (2,3,"abw"); (2,8,"aa4"); (3,3,"abg"); (3,2,"ab4"); (2,11,"abb"); (1,4,"ab3"); (4,12,"abd"); (3,10,"abp"); (6,7,"abp"); (5,7,"aa2"); (1,9,"ab3"); (2,6,"abk"); (4,9,"abw"); (6,1,"abb"); (2,1,"aar"); (5,12,"aag")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(8,1,"aak"); (7,4,"aay"); (4,2,"aaj"); (1,1,"abc"); (2,3,"ab4"); (9,5,"aag"); (2,6,"aao"); (2,4,"aab"); (6,6,"abv"); (7,6,"abp"); (5,6,"abp"); (2,1,"aag"); (6,2,"abk"); (5,1,"abk"); (2,2,"aa6"); (9,4,"abw"); (6,4,"abv"); (11,4,"aan"); (5,2,"abx"); (5,4,"abj"); (9,2,"aba"); (7,3,"aaw"); (10,6,"abi"); (1,4,"abh"); (1,5,"abq"); (12,1,"abv"); (7,5,"aa2"); (3,1,"aa7"); (4,3,"aae"); (3,3,"abg"); (1,6,"abb"); (4,5,"aav"); (12,4,"abd"); (9,1,"ab3"); (9,3,"abl"); (4,6,"abz"); (10,1,"aaa"); (6,1,"aaq"); (8,2,"aa4"); (8,5,"aar"); (6,5,"abg"); (5,5,"aak"); (10,3,"abp"); (1,3,"abi"); (5,3,"aas"); (3,6,"abz"); (12,3,"ab3"); (10,4,"aaj"); (8,3,"abb"); (7,1,"ab3"); (12,5,"aag"); (3,4,"abn"); (8,4,"aa7"); (1,2,"aar"); (6,3,"aay"); (4,4,"aai"); (3,5,"aak"); (10,5,"abz"); (12,2,"abo"); (9,6,"aab"); (10,2,"aa6"); (11,5,"abn"); (7,2,"aad"); (11,2,"abb"); (11,6,"abu"); (11,3,"aak"); (12,6,"abl"); (8,6,"aal"); (11,1,"ab6"); (3,2,"abw")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,8,"aak"); (4,7,"aay"); (2,4,"aaj"); (1,1,"abc"); (3,2,"ab4"); (5,9,"aag"); (6,2,"aao"); (4,2,"aab"); (6,6,"abv"); (6,7,"abp"); (6,5,"abp"); (1,2,"aag"); (2,6,"abk"); (1,5,"abk"); (2,2,"aa6"); (4,9,"abw"); (4,6,"abv"); (4,11,"aan"); (2,5,"abx"); (4,5,"abj"); (2,9,"aba"); (3,7,"aaw"); (6,10,"abi"); (4,1,"abh"); (5,1,"abq"); (1,12,"abv"); (5,7,"aa2"); (1,3,"aa7"); (3,4,"aae"); (3,3,"abg"); (6,1,"abb"); (5,4,"aav"); (4,12,"abd"); (1,9,"ab3"); (3,9,"abl"); (6,4,"abz"); (1,10,"aaa"); (1,6,"aaq"); (2,8,"aa4"); (5,8,"aar"); (5,6,"abg"); (5,5,"aak"); (3,10,"abp"); (3,1,"abi"); (3,5,"aas"); (6,3,"abz"); (3,12,"ab3"); (4,10,"aaj"); (3,8,"abb"); (1,7,"ab3"); (5,12,"aag"); (4,3,"abn"); (4,8,"aa7"); (2,1,"aar"); (3,6,"aay"); (4,4,"aai"); (5,3,"aak"); (5,10,"abz"); (2,12,"abo"); (6,9,"aab"); (2,10,"aa6"); (5,11,"abn"); (2,7,"aad"); (2,11,"abb"); (6,11,"abu"); (3,11,"aak"); (6,12,"abl"); (6,8,"aal"); (1,11,"ab6"); (2,3,"abw")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(1,1,"aam"); (1,2,"aas"); (1,3,"abd"); (1,4,"abg"); (1,5,"aaz"); (1,6,"aa7"); (1,7,"abn")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aam"); (2,1,"aas"); (3,1,"abd"); (4,1,"abg"); (5,1,"aaz"); (6,1,"aa7"); (7,1,"abn")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(1,1,"abx"); (1,2,"aat"); (1,3,"aby"); (1,4,"ab7"); (1,5,"abe")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abx"); (2,1,"aat"); (3,1,"aby"); (4,1,"ab7"); (5,1,"abe")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(1,1,"aap"); (1,2,"abj"); (1,3,"ab3"); (1,4,"abi")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aap"); (2,1,"abj"); (3,1,"ab3"); (4,1,"abi")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(1,1,"aa5"); (1,2,"abz"); (1,3,"aau")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aa5"); (2,1,"abz"); (3,1,"aau")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(1,1,"aab"); (1,2,"aay"); (1,3,"abd")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aab"); (2,1,"aay"); (3,1,"abd")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(1,1,"aaq"); (1,2,"abk"); (1,3,"aay"); (1,4,"abv"); (1,5,"abg"); (1,6,"abv")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aaq"); (2,1,"abk"); (3,1,"aay"); (4,1,"abv"); (5,1,"abg"); (6,1,"abv")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(1,1,"aak"); (1,2,"aae"); (1,3,"aaw"); (1,4,"abz"); (1,5,"abg"); (1,6,"abh"); (1,7,"aax")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aak"); (2,1,"aae"); (3,1,"aaw"); (4,1,"abz"); (5,1,"abg"); (6,1,"abh"); (7,1,"aax")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(1,1,"aa5"); (1,2,"aas"); (1,3,"abd"); (1,4,"aaa")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aa5"); (2,1,"aas"); (3,1,"abd"); (4,1,"aaa")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(1,1,"abq"); (1,2,"aaa"); (1,3,"aba"); (1,4,"abl"); (1,5,"abb"); (1,6,"aay"); (1,7,"aag")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abq"); (2,1,"aaa"); (3,1,"aba"); (4,1,"abl"); (5,1,"abb"); (6,1,"aay"); (7,1,"aag")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(1,1,"ab4"); (1,2,"aam"); (1,3,"abs")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"ab4"); (2,1,"aam"); (3,1,"abs")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(1,1,"aam"); (2,1,"aas"); (3,1,"abd"); (4,1,"abg"); (5,1,"aaz"); (6,1,"aa7"); (7,1,"abn")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aam"); (1,2,"aas"); (1,3,"abd"); (1,4,"abg"); (1,5,"aaz"); (1,6,"aa7"); (1,7,"abn")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(1,1,"ab6"); (2,1,"abb"); (3,1,"abi"); (4,1,"aau"); (5,1,"aa5")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"ab6"); (1,2,"abb"); (1,3,"abi"); (1,4,"aau"); (1,5,"aa5")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(1,1,"abh"); (2,1,"aas"); (3,1,"ab4"); (4,1,"abn")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abh"); (1,2,"aas"); (1,3,"ab4"); (1,4,"abn")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(1,1,"aat"); (2,1,"aar"); (3,1,"aap")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aat"); (1,2,"aar"); (1,3,"aap")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(1,1,"aah"); (2,1,"aa4"); (3,1,"aaa")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aah"); (1,2,"aa4"); (1,3,"aaa")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(1,1,"abk"); (2,1,"abx"); (3,1,"aas"); (4,1,"abj"); (5,1,"aak"); (6,1,"abp")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abk"); (1,2,"abx"); (1,3,"aas"); (1,4,"abj"); (1,5,"aak"); (1,6,"abp")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(1,1,"aa2"); (2,1,"aas"); (3,1,"abf"); (4,1,"abb"); (5,1,"ab7"); (6,1,"ab3"); (7,1,"abr")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aa2"); (1,2,"aas"); (1,3,"abf"); (1,4,"abb"); (1,5,"ab7"); (1,6,"ab3"); (1,7,"abr")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(1,1,"aak"); (2,1,"aal"); (3,1,"abc"); (4,1,"ab3")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aak"); (1,2,"aal"); (1,3,"abc"); (1,4,"ab3")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(1,1,"aaj"); (2,1,"aaa"); (3,1,"aaf"); (4,1,"aas"); (5,1,"abl"); (6,1,"abl"); (7,1,"aa3")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"aaj"); (1,2,"aaa"); (1,3,"aaf"); (1,4,"aas"); (1,5,"abl"); (1,6,"abl"); (1,7,"aa3")]
        ```
        

+  _0.1_ / _0.1_ : Pass: 
        Check that the result of evaluating
        ```
        List.sort compare  (Tables.transpose_table [(1,1,"abt"); (2,1,"aac"); (3,1,"aar")])
        ```
        Matches the result of evaluating
        ```
        List.sort compare [(1,1,"abt"); (1,2,"aac"); (1,3,"aar")]
        ```
        

#### Subtotal: _4.999999999999998_ / _4.999999999999998_

## Manual tests entered by TA: whit2267

+ Pass: Check that file "tables.ml" exists.

+  _6_ / _7_ : Pass: 
    Useful comments and indentation
    
    
     Score (out of 2): 1
    Appropriate task decomposition into helper functions
    
    
     Score (out of 2): 2
    Uses an appropriate/efficient algorithm
    
    
     Score (out of 2): 2
    Correct tail recursion
    
    
     Score (out of 1): 1


+ Pass: Other Stylistic Comments & Feedback

    Needs comments

#### Subtotal: _6_ / _7_

