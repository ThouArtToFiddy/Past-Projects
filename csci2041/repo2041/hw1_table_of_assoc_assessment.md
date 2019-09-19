## Assessment for HW1 table_of_assoc

Run on February 17, 20:06:48 PM.

+ Pass: Change into directory "hw1".

## Feedback Tests (total possible value: 6)

+ Pass: Check that file "tables.ml" exists.

+ Pass: Check that file "slicendice.ml" exists.

+ Pass: Check that hw1 files compile without errors

+  _1.2_ / _1.2_ : Pass: 
Check that the result of evaluating
   ```
   table_of_assoc [(1,1,"a")]
   ```
   matches the pattern `[["a"]]`.

   




+  _1.2_ / _1.2_ : Pass: 
Check that the result of evaluating
   ```
   table_of_assoc [(1,1,"a"); (2,1,"b")]
   ```
   matches the pattern `[["a"]; ["b"]]`.

   




+  _1.2_ / _1.2_ : Pass: 
Check that the result of evaluating
   ```
   table_of_assoc [(1,1,"a"); (1,2,"b")]
   ```
   matches the pattern `[["a"; "b"]]`.

   




+  _1.2_ / _1.2_ : Pass: 
Check that the result of evaluating
   ```
   table_of_assoc [(1,1,"a"); (3,1,"b")]
   ```
   matches the pattern `[["a"]; []; ["b"]]`.

   




+  _1.2_ / _1.2_ : Pass: 
Check that the result of evaluating
   ```
   table_of_assoc [(1,1,"a"); (1,3,"b")]
   ```
   matches the pattern `[["a"; ""; "b"]]`.

   




#### Subtotal: _6.0_ / _6.0_

## Random Tests

+ Pass: Check that file "tables.ml" exists.

+ Pass: Check that file "slicendice.ml" exists.

+ Pass: Check that hw1 files compile without errors

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(2,7,"abo"); (4,7,"aag"); (9,4,"abk"); (7,3,"aae"); (5,6,"aak"); (3,3,"aal"); (1,7,"abn"); (3,1,"ab4"); (6,4,"aar"); (2,1,"aak"); (7,4,"ab5"); (8,6,"abr"); (5,2,"abz"); (6,2,"aap"); (9,5,"abl"); (4,1,"abn"); (6,1,"abk"); (1,1,"aam"); (5,5,"aa7"); (5,3,"abd"); (4,6,"abw"); (3,2,"abm"); (5,4,"abj"); (7,7,"aag"); (1,4,"abg"); (1,3,"abd"); (3,6,"abr"); (4,5,"aaj"); (8,2,"aaf"); (3,4,"aba"); (2,2,"abu"); (1,2,"aas"); (8,5,"ab6"); (1,5,"aaz"); (9,7,"abe"); (1,6,"aa7"); (4,2,"aab"); (8,1,"aay"); (9,6,"aad"); (7,5,"aav"); (3,7,"aah"); (6,5,"abd"); (8,3,"abv"); (2,6,"abo"); (6,3,"abw"); (7,1,"abq"); (4,3,"aas"); (2,3,"aa3"); (9,1,"abi"); (5,7,"abu"); (7,6,"abt"); (5,1,"aaf"); (2,5,"aag"); (7,2,"aa3"); (3,5,"aaj"); (4,4,"aap"); (6,6,"abb"); (8,7,"aa4"); (2,4,"abf"); (9,2,"aas"); (6,7,"aac"); (8,4,"aap"); (9,3,"aaf")])
        ```
        Matches the result of evaluating
        ```
        [["aam"; "aas"; "abd"; "abg"; "aaz"; "aa7"; "abn"]; ["aak"; "abu"; "aa3"; "abf"; "aag"; "abo"; "abo"]; ["ab4"; "abm"; "aal"; "aba"; "aaj"; "abr"; "aah"]; ["abn"; "aab"; "aas"; "aap"; "aaj"; "abw"; "aag"]; ["aaf"; "abz"; "abd"; "abj"; "aa7"; "aak"; "abu"]; ["abk"; "aap"; "abw"; "aar"; "abd"; "abb"; "aac"]; ["abq"; "aa3"; "aae"; "ab5"; "aav"; "abt"; "aag"]; ["aay"; "aaf"; "abv"; "aap"; "ab6"; "abr"; "aa4"]; ["abi"; "aas"; "aaf"; "abk"; "abl"; "aad"; "abe"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(1,4,"aau"); (3,3,"aab"); (2,2,"aat"); (3,4,"abe"); (4,4,"aar"); (4,5,"abs"); (9,1,"ab6"); (6,3,"aan"); (5,2,"aau"); (1,1,"abo"); (7,5,"aao"); (9,4,"aau"); (4,2,"abt"); (8,4,"aa5"); (7,3,"abo"); (7,2,"aby"); (6,5,"ab4"); (4,3,"aam"); (7,4,"abv"); (1,3,"aby"); (2,4,"ab7"); (6,2,"aax"); (8,5,"aah"); (8,3,"aai"); (5,3,"abt"); (9,5,"aa5"); (10,3,"aam"); (9,2,"abb"); (2,1,"abx"); (2,3,"aby"); (10,5,"aau"); (10,4,"aav"); (10,1,"abg"); (3,2,"aah"); (5,4,"abs"); (2,5,"abe"); (6,4,"aaw"); (3,1,"abo"); (5,1,"aar"); (1,2,"aaa"); (8,2,"aba"); (4,1,"aaz"); (9,3,"abi"); (8,1,"aa4"); (1,5,"aae"); (5,5,"ab4"); (10,2,"aai"); (3,5,"aag"); (6,1,"abh"); (7,1,"abs")])
        ```
        Matches the result of evaluating
        ```
        [["abo"; "aaa"; "aby"; "aau"; "aae"]; ["abx"; "aat"; "aby"; "ab7"; "abe"]; ["abo"; "aah"; "aab"; "abe"; "aag"]; ["aaz"; "abt"; "aam"; "aar"; "abs"]; ["aar"; "aau"; "abt"; "abs"; "ab4"]; ["abh"; "aax"; "aan"; "aaw"; "ab4"]; ["abs"; "aby"; "abo"; "abv"; "aao"]; ["aa4"; "aba"; "aai"; "aa5"; "aah"]; ["ab6"; "abb"; "abi"; "aau"; "aa5"]; ["abg"; "aai"; "aam"; "aav"; "aau"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(6,3,"aar"); (8,2,"aas"); (5,1,"aam"); (5,2,"aah"); (4,2,"aa7"); (6,4,"aa7"); (3,3,"ab3"); (6,1,"aa4"); (4,3,"aat"); (1,2,"aa3"); (8,4,"abn"); (1,4,"abc"); (3,4,"abi"); (8,3,"ab4"); (4,1,"aba"); (5,4,"abi"); (8,1,"abh"); (2,3,"abn"); (1,3,"abv"); (4,4,"abs"); (6,2,"aao"); (2,2,"ab3"); (1,1,"aav"); (7,1,"abm"); (2,1,"aaz"); (3,2,"abj"); (7,3,"aat"); (3,1,"aap"); (7,2,"aas"); (2,4,"aan"); (5,3,"ab3"); (7,4,"abx")])
        ```
        Matches the result of evaluating
        ```
        [["aav"; "aa3"; "abv"; "abc"]; ["aaz"; "ab3"; "abn"; "aan"]; ["aap"; "abj"; "ab3"; "abi"]; ["aba"; "aa7"; "aat"; "abs"]; ["aam"; "aah"; "ab3"; "abi"]; ["aa4"; "aao"; "aar"; "aa7"]; ["abm"; "aas"; "aat"; "abx"]; ["abh"; "aas"; "ab4"; "abn"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(1,2,"abz"); (5,1,"abo"); (10,1,"aan"); (3,1,"abt"); (1,3,"abn"); (7,3,"aap"); (4,1,"aa5"); (12,1,"ab3"); (4,3,"aau"); (1,1,"aai"); (6,3,"aah"); (12,2,"abx"); (9,2,"abk"); (11,3,"aao"); (2,2,"aan"); (8,3,"aay"); (4,2,"abz"); (2,3,"aaf"); (7,2,"aar"); (11,2,"aas"); (8,2,"abz"); (5,3,"abv"); (9,3,"abp"); (5,2,"aad"); (10,2,"aa4"); (3,2,"abn"); (7,1,"aat"); (9,1,"abz"); (2,1,"aaz"); (3,3,"abn"); (6,1,"abp"); (11,1,"aad"); (6,2,"aag"); (12,3,"aau"); (8,1,"abf"); (10,3,"aab")])
        ```
        Matches the result of evaluating
        ```
        [["aai"; "abz"; "abn"]; ["aaz"; "aan"; "aaf"]; ["abt"; "abn"; "abn"]; ["aa5"; "abz"; "aau"]; ["abo"; "aad"; "abv"]; ["abp"; "aag"; "aah"]; ["aat"; "aar"; "aap"]; ["abf"; "abz"; "aay"]; ["abz"; "abk"; "abp"]; ["aan"; "aa4"; "aab"]; ["aad"; "aas"; "aao"]; ["ab3"; "abx"; "aau"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(1,1,"abk"); (8,1,"aaj"); (2,2,"aaq"); (2,1,"abt"); (3,2,"aa5"); (2,3,"aaw"); (4,2,"aae"); (6,3,"aaa"); (1,3,"abb"); (3,3,"aay"); (8,2,"ab3"); (7,3,"ab7"); (3,1,"ab7"); (5,2,"aay"); (5,1,"aab"); (6,1,"aah"); (1,2,"abc"); (7,1,"abe"); (7,2,"aa6"); (6,2,"aa4"); (5,3,"abd"); (4,1,"abh"); (4,3,"abk"); (8,3,"abq")])
        ```
        Matches the result of evaluating
        ```
        [["abk"; "abc"; "abb"]; ["abt"; "aaq"; "aaw"]; ["ab7"; "aa5"; "aay"]; ["abh"; "aae"; "abk"]; ["aab"; "aay"; "abd"]; ["aah"; "aa4"; "aaa"]; ["abe"; "aa6"; "ab7"]; ["aaj"; "ab3"; "abq"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(10,1,"aaa"); (1,4,"abh"); (11,3,"aak"); (3,5,"aak"); (9,2,"aba"); (12,3,"ab3"); (12,5,"aag"); (6,1,"aaq"); (4,4,"aai"); (12,1,"abv"); (10,3,"abp"); (7,4,"aay"); (10,5,"abz"); (10,4,"aaj"); (2,1,"aag"); (6,2,"abk"); (3,4,"abn"); (9,5,"aag"); (4,6,"abz"); (7,1,"ab3"); (4,5,"aav"); (5,6,"abp"); (11,1,"ab6"); (2,4,"aab"); (6,5,"abg"); (8,2,"aa4"); (2,3,"ab4"); (11,5,"abn"); (5,3,"aas"); (1,5,"abq"); (12,2,"abo"); (11,4,"aan"); (3,3,"abg"); (1,6,"abb"); (4,1,"ab3"); (7,2,"aad"); (3,6,"abz"); (1,1,"abc"); (10,2,"aa6"); (8,6,"aal"); (1,3,"abi"); (9,3,"abl"); (9,4,"abw"); (5,2,"abx"); (8,4,"aa7"); (8,3,"abb"); (4,2,"aaj"); (12,4,"abd"); (11,2,"abb"); (2,5,"abr"); (7,5,"aa2"); (7,3,"aaw"); (6,3,"aay"); (7,6,"abp"); (5,4,"abj"); (3,2,"abw"); (2,2,"aa6"); (6,4,"abv"); (9,1,"ab3"); (9,6,"aab"); (11,6,"abu"); (6,6,"abv"); (8,1,"aak"); (1,2,"aar"); (10,6,"abi"); (12,6,"abl"); (8,5,"aar"); (3,1,"aa7"); (2,6,"aao"); (5,5,"aak"); (5,1,"abk"); (4,3,"aae")])
        ```
        Matches the result of evaluating
        ```
        [["abc"; "aar"; "abi"; "abh"; "abq"; "abb"]; ["aag"; "aa6"; "ab4"; "aab"; "abr"; "aao"]; ["aa7"; "abw"; "abg"; "abn"; "aak"; "abz"]; ["ab3"; "aaj"; "aae"; "aai"; "aav"; "abz"]; ["abk"; "abx"; "aas"; "abj"; "aak"; "abp"]; ["aaq"; "abk"; "aay"; "abv"; "abg"; "abv"]; ["ab3"; "aad"; "aaw"; "aay"; "aa2"; "abp"]; ["aak"; "aa4"; "abb"; "aa7"; "aar"; "aal"]; ["ab3"; "aba"; "abl"; "abw"; "aag"; "aab"]; ["aaa"; "aa6"; "abp"; "aaj"; "abz"; "abi"]; ["ab6"; "abb"; "aak"; "aan"; "abn"; "abu"]; ["abv"; "abo"; "ab3"; "abd"; "aag"; "abl"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(4,1,"aa2"); (7,1,"aak"); (8,6,"abd"); (5,4,"aa5"); (1,3,"aag"); (7,5,"abg"); (2,4,"abw"); (3,5,"abc"); (5,5,"aar"); (1,6,"abg"); (4,7,"abr"); (5,3,"aao"); (9,7,"aaw"); (5,7,"aby"); (7,4,"abz"); (6,6,"aau"); (2,6,"aa7"); (6,5,"aaj"); (7,3,"aaw"); (6,3,"abn"); (3,1,"ab3"); (2,1,"abb"); (3,3,"abh"); (8,2,"abs"); (7,7,"aax"); (5,1,"aao"); (2,3,"abj"); (4,5,"ab7"); (4,2,"aas"); (7,6,"abh"); (6,4,"aae"); (1,2,"aao"); (10,2,"aaz"); (1,5,"aa7"); (10,4,"aby"); (6,7,"abz"); (1,1,"abl"); (2,2,"aac"); (3,4,"aa3"); (5,2,"abq"); (10,7,"abv"); (1,7,"abx"); (9,4,"aak"); (6,1,"ab6"); (10,1,"abh"); (7,2,"aae"); (9,6,"aaf"); (9,1,"abt"); (8,1,"ab5"); (10,5,"abq"); (4,6,"ab3"); (5,6,"abe"); (2,7,"aav"); (3,6,"aa5"); (8,4,"abr"); (4,3,"abf"); (2,5,"aaz"); (8,5,"aa4"); (3,7,"aab"); (9,5,"aam"); (8,3,"abc"); (8,7,"aaj"); (9,2,"abf"); (10,3,"abq"); (4,4,"abb"); (3,2,"aaj"); (1,4,"aa2"); (9,3,"aan"); (10,6,"aao"); (6,2,"abg")])
        ```
        Matches the result of evaluating
        ```
        [["abl"; "aao"; "aag"; "aa2"; "aa7"; "abg"; "abx"]; ["abb"; "aac"; "abj"; "abw"; "aaz"; "aa7"; "aav"]; ["ab3"; "aaj"; "abh"; "aa3"; "abc"; "aa5"; "aab"]; ["aa2"; "aas"; "abf"; "abb"; "ab7"; "ab3"; "abr"]; ["aao"; "abq"; "aao"; "aa5"; "aar"; "abe"; "aby"]; ["ab6"; "abg"; "abn"; "aae"; "aaj"; "aau"; "abz"]; ["aak"; "aae"; "aaw"; "abz"; "abg"; "abh"; "aax"]; ["ab5"; "abs"; "abc"; "abr"; "aa4"; "abd"; "aaj"]; ["abt"; "abf"; "aan"; "aak"; "aam"; "aaf"; "aaw"]; ["abh"; "aaz"; "abq"; "aby"; "abq"; "aao"; "abv"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(7,2,"abc"); (4,1,"abw"); (4,4,"aaz"); (8,1,"aa5"); (4,3,"abb"); (5,1,"aa4"); (7,3,"abl"); (2,1,"ab7"); (6,3,"aad"); (10,1,"aby"); (5,4,"aaa"); (8,2,"aas"); (4,2,"aax"); (6,1,"ab6"); (12,4,"abo"); (6,2,"aaz"); (1,4,"abc"); (8,4,"aaa"); (7,1,"abj"); (2,3,"aao"); (2,4,"ab2"); (11,4,"aa7"); (3,1,"aak"); (7,4,"aal"); (1,2,"aar"); (12,1,"aa2"); (5,2,"abv"); (1,3,"abn"); (12,3,"aae"); (11,1,"aaq"); (8,3,"abd"); (9,1,"abv"); (10,2,"aae"); (12,2,"ab4"); (9,2,"aad"); (1,1,"abf"); (2,2,"aa4"); (11,2,"aak"); (10,3,"aak"); (3,2,"aal"); (5,3,"abf"); (9,4,"aa7"); (3,4,"ab3"); (11,3,"aan"); (9,3,"abd"); (6,4,"abp"); (3,3,"abc"); (10,4,"ab7")])
        ```
        Matches the result of evaluating
        ```
        [["abf"; "aar"; "abn"; "abc"]; ["ab7"; "aa4"; "aao"; "ab2"]; ["aak"; "aal"; "abc"; "ab3"]; ["abw"; "aax"; "abb"; "aaz"]; ["aa4"; "abv"; "abf"; "aaa"]; ["ab6"; "aaz"; "aad"; "abp"]; ["abj"; "abc"; "abl"; "aal"]; ["aa5"; "aas"; "abd"; "aaa"]; ["abv"; "aad"; "abd"; "aa7"]; ["aby"; "aae"; "aak"; "ab7"]; ["aaq"; "aak"; "aan"; "aa7"]; ["aa2"; "ab4"; "aae"; "abo"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(4,2,"abx"); (6,6,"abn"); (9,2,"aaa"); (8,1,"abr"); (5,5,"abj"); (3,2,"aaf"); (6,5,"abp"); (9,7,"aag"); (2,4,"aas"); (8,3,"aaw"); (9,1,"abq"); (6,2,"aar"); (7,2,"aag"); (7,1,"ab6"); (3,5,"aas"); (5,1,"ab4"); (2,7,"aa3"); (7,3,"abi"); (10,7,"aal"); (10,3,"aaz"); (1,3,"abz"); (4,4,"abt"); (7,7,"aak"); (10,6,"aau"); (5,3,"abz"); (4,3,"aar"); (6,7,"abw"); (1,5,"abx"); (7,5,"abo"); (9,5,"abb"); (9,4,"abl"); (8,7,"aab"); (8,2,"abg"); (5,7,"abz"); (2,6,"abl"); (1,2,"abm"); (3,4,"aax"); (2,1,"aaj"); (1,6,"aax"); (8,4,"aah"); (1,7,"aap"); (8,6,"abv"); (3,6,"abd"); (9,3,"aba"); (9,6,"aay"); (5,4,"abz"); (2,3,"aaf"); (4,5,"aao"); (6,1,"abf"); (6,4,"abj"); (3,1,"aaa"); (10,4,"ab6"); (10,5,"abi"); (4,1,"aau"); (5,2,"abt"); (4,6,"ab7"); (8,5,"abq"); (1,1,"aba"); (7,4,"aam"); (10,1,"abh"); (10,2,"abu"); (3,7,"aaj"); (1,4,"aai"); (2,5,"abl"); (5,6,"aam"); (4,7,"abv"); (3,3,"aa4"); (7,6,"aav"); (6,3,"abp"); (2,2,"aaa")])
        ```
        Matches the result of evaluating
        ```
        [["aba"; "abm"; "abz"; "aai"; "abx"; "aax"; "aap"]; ["aaj"; "aaa"; "aaf"; "aas"; "abl"; "abl"; "aa3"]; ["aaa"; "aaf"; "aa4"; "aax"; "aas"; "abd"; "aaj"]; ["aau"; "abx"; "aar"; "abt"; "aao"; "ab7"; "abv"]; ["ab4"; "abt"; "abz"; "abz"; "abj"; "aam"; "abz"]; ["abf"; "aar"; "abp"; "abj"; "abp"; "abn"; "abw"]; ["ab6"; "aag"; "abi"; "aam"; "abo"; "aav"; "aak"]; ["abr"; "abg"; "aaw"; "aah"; "abq"; "abv"; "aab"]; ["abq"; "aaa"; "aba"; "abl"; "abb"; "aay"; "aag"]; ["abh"; "abu"; "aaz"; "ab6"; "abi"; "aau"; "aal"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(2,2,"abm"); (6,1,"abl"); (9,2,"aa4"); (3,3,"ab5"); (2,3,"ab7"); (5,2,"aaa"); (2,1,"aat"); (7,1,"aby"); (9,1,"aav"); (6,3,"aa4"); (4,2,"abr"); (7,2,"abl"); (4,1,"abp"); (10,1,"ab4"); (1,2,"aac"); (1,3,"aar"); (9,3,"aae"); (3,2,"abx"); (10,2,"aam"); (5,1,"abw"); (3,1,"aat"); (8,3,"abm"); (7,3,"abm"); (5,3,"aa7"); (6,2,"aac"); (8,2,"aak"); (8,1,"aau"); (10,3,"abs"); (1,1,"abt"); (4,3,"aav")])
        ```
        Matches the result of evaluating
        ```
        [["abt"; "aac"; "aar"]; ["aat"; "abm"; "ab7"]; ["aat"; "abx"; "ab5"]; ["abp"; "abr"; "aav"]; ["abw"; "aaa"; "aa7"]; ["abl"; "aac"; "aa4"]; ["aby"; "abl"; "abm"]; ["aau"; "aak"; "abm"]; ["aav"; "aa4"; "aae"]; ["ab4"; "aam"; "abs"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(2,7,"abo"); (4,7,"aag"); (9,4,"abk"); (5,6,"aak"); (1,7,"abn"); (3,1,"ab4"); (6,4,"aar"); (2,1,"aak"); (7,4,"ab5"); (8,6,"abr"); (5,2,"abz"); (6,2,"aap"); (9,5,"abl"); (4,1,"abn"); (6,1,"abk"); (1,1,"aam"); (5,5,"aa7"); (4,6,"abw"); (3,2,"abm"); (5,4,"abj"); (7,7,"aag"); (1,4,"abg"); (3,6,"abr"); (4,5,"aaj"); (8,2,"aaf"); (3,4,"aba"); (2,2,"abu"); (1,2,"aas"); (8,5,"ab6"); (1,5,"aaz"); (9,7,"abe"); (1,6,"aa7"); (4,2,"aab"); (8,1,"aay"); (9,6,"aad"); (7,5,"aav"); (3,7,"aah"); (6,5,"abd"); (2,6,"abo"); (7,1,"abq"); (9,1,"abi"); (5,7,"abu"); (7,6,"abt"); (5,1,"aaf"); (2,5,"aag"); (7,2,"aa3"); (3,5,"aaj"); (4,4,"aap"); (6,6,"abb"); (8,7,"aa4"); (2,4,"abf"); (9,2,"aas"); (6,7,"aac"); (8,4,"aap")])
        ```
        Matches the result of evaluating
        ```
        [["aam"; "aas"; ""; "abg"; "aaz"; "aa7"; "abn"]; ["aak"; "abu"; ""; "abf"; "aag"; "abo"; "abo"]; ["ab4"; "abm"; ""; "aba"; "aaj"; "abr"; "aah"]; ["abn"; "aab"; ""; "aap"; "aaj"; "abw"; "aag"]; ["aaf"; "abz"; ""; "abj"; "aa7"; "aak"; "abu"]; ["abk"; "aap"; ""; "aar"; "abd"; "abb"; "aac"]; ["abq"; "aa3"; ""; "ab5"; "aav"; "abt"; "aag"]; ["aay"; "aaf"; ""; "aap"; "ab6"; "abr"; "aa4"]; ["abi"; "aas"; ""; "abk"; "abl"; "aad"; "abe"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(1,4,"aau"); (3,3,"aab"); (3,4,"abe"); (4,4,"aar"); (4,5,"abs"); (9,1,"ab6"); (6,3,"aan"); (1,1,"abo"); (7,5,"aao"); (9,4,"aau"); (8,4,"aa5"); (7,3,"abo"); (6,5,"ab4"); (4,3,"aam"); (7,4,"abv"); (1,3,"aby"); (2,4,"ab7"); (8,5,"aah"); (8,3,"aai"); (5,3,"abt"); (9,5,"aa5"); (10,3,"aam"); (2,1,"abx"); (2,3,"aby"); (10,5,"aau"); (10,4,"aav"); (10,1,"abg"); (5,4,"abs"); (2,5,"abe"); (6,4,"aaw"); (3,1,"abo"); (5,1,"aar"); (4,1,"aaz"); (9,3,"abi"); (8,1,"aa4"); (1,5,"aae"); (5,5,"ab4"); (3,5,"aag"); (6,1,"abh"); (7,1,"abs")])
        ```
        Matches the result of evaluating
        ```
        [["abo"; ""; "aby"; "aau"; "aae"]; ["abx"; ""; "aby"; "ab7"; "abe"]; ["abo"; ""; "aab"; "abe"; "aag"]; ["aaz"; ""; "aam"; "aar"; "abs"]; ["aar"; ""; "abt"; "abs"; "ab4"]; ["abh"; ""; "aan"; "aaw"; "ab4"]; ["abs"; ""; "abo"; "abv"; "aao"]; ["aa4"; ""; "aai"; "aa5"; "aah"]; ["ab6"; ""; "abi"; "aau"; "aa5"]; ["abg"; ""; "aam"; "aav"; "aau"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(6,3,"aar"); (8,2,"aas"); (5,2,"aah"); (4,2,"aa7"); (6,4,"aa7"); (3,3,"ab3"); (4,3,"aat"); (1,2,"aa3"); (8,4,"abn"); (1,4,"abc"); (3,4,"abi"); (8,3,"ab4"); (5,4,"abi"); (2,3,"abn"); (1,3,"abv"); (4,4,"abs"); (6,2,"aao"); (2,2,"ab3"); (3,2,"abj"); (7,3,"aat"); (7,2,"aas"); (2,4,"aan"); (5,3,"ab3"); (7,4,"abx")])
        ```
        Matches the result of evaluating
        ```
        [[""; "aa3"; "abv"; "abc"]; [""; "ab3"; "abn"; "aan"]; [""; "abj"; "ab3"; "abi"]; [""; "aa7"; "aat"; "abs"]; [""; "aah"; "ab3"; "abi"]; [""; "aao"; "aar"; "aa7"]; [""; "aas"; "aat"; "abx"]; [""; "aas"; "ab4"; "abn"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(1,2,"abz"); (1,3,"abn"); (7,3,"aap"); (4,3,"aau"); (6,3,"aah"); (12,2,"abx"); (9,2,"abk"); (11,3,"aao"); (2,2,"aan"); (8,3,"aay"); (4,2,"abz"); (2,3,"aaf"); (7,2,"aar"); (11,2,"aas"); (8,2,"abz"); (5,3,"abv"); (9,3,"abp"); (5,2,"aad"); (10,2,"aa4"); (3,2,"abn"); (3,3,"abn"); (6,2,"aag"); (12,3,"aau"); (10,3,"aab")])
        ```
        Matches the result of evaluating
        ```
        [[""; "abz"; "abn"]; [""; "aan"; "aaf"]; [""; "abn"; "abn"]; [""; "abz"; "aau"]; [""; "aad"; "abv"]; [""; "aag"; "aah"]; [""; "aar"; "aap"]; [""; "abz"; "aay"]; [""; "abk"; "abp"]; [""; "aa4"; "aab"]; [""; "aas"; "aao"]; [""; "abx"; "aau"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(2,2,"aaq"); (3,2,"aa5"); (2,3,"aaw"); (4,2,"aae"); (6,3,"aaa"); (1,3,"abb"); (3,3,"aay"); (8,2,"ab3"); (7,3,"ab7"); (5,2,"aay"); (1,2,"abc"); (7,2,"aa6"); (6,2,"aa4"); (5,3,"abd"); (4,3,"abk"); (8,3,"abq")])
        ```
        Matches the result of evaluating
        ```
        [[""; "abc"; "abb"]; [""; "aaq"; "aaw"]; [""; "aa5"; "aay"]; [""; "aae"; "abk"]; [""; "aay"; "abd"]; [""; "aa4"; "aaa"]; [""; "aa6"; "ab7"]; [""; "ab3"; "abq"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(10,1,"aaa"); (1,4,"abh"); (3,5,"aak"); (9,2,"aba"); (12,5,"aag"); (6,1,"aaq"); (4,4,"aai"); (12,1,"abv"); (7,4,"aay"); (10,5,"abz"); (10,4,"aaj"); (2,1,"aag"); (6,2,"abk"); (3,4,"abn"); (9,5,"aag"); (4,6,"abz"); (7,1,"ab3"); (4,5,"aav"); (5,6,"abp"); (11,1,"ab6"); (2,4,"aab"); (6,5,"abg"); (8,2,"aa4"); (11,5,"abn"); (1,5,"abq"); (12,2,"abo"); (11,4,"aan"); (1,6,"abb"); (4,1,"ab3"); (7,2,"aad"); (3,6,"abz"); (1,1,"abc"); (10,2,"aa6"); (8,6,"aal"); (9,4,"abw"); (5,2,"abx"); (8,4,"aa7"); (4,2,"aaj"); (12,4,"abd"); (11,2,"abb"); (2,5,"abr"); (7,5,"aa2"); (7,6,"abp"); (5,4,"abj"); (3,2,"abw"); (2,2,"aa6"); (6,4,"abv"); (9,1,"ab3"); (9,6,"aab"); (11,6,"abu"); (6,6,"abv"); (8,1,"aak"); (1,2,"aar"); (10,6,"abi"); (12,6,"abl"); (8,5,"aar"); (3,1,"aa7"); (2,6,"aao"); (5,5,"aak"); (5,1,"abk")])
        ```
        Matches the result of evaluating
        ```
        [["abc"; "aar"; ""; "abh"; "abq"; "abb"]; ["aag"; "aa6"; ""; "aab"; "abr"; "aao"]; ["aa7"; "abw"; ""; "abn"; "aak"; "abz"]; ["ab3"; "aaj"; ""; "aai"; "aav"; "abz"]; ["abk"; "abx"; ""; "abj"; "aak"; "abp"]; ["aaq"; "abk"; ""; "abv"; "abg"; "abv"]; ["ab3"; "aad"; ""; "aay"; "aa2"; "abp"]; ["aak"; "aa4"; ""; "aa7"; "aar"; "aal"]; ["ab3"; "aba"; ""; "abw"; "aag"; "aab"]; ["aaa"; "aa6"; ""; "aaj"; "abz"; "abi"]; ["ab6"; "abb"; ""; "aan"; "abn"; "abu"]; ["abv"; "abo"; ""; "abd"; "aag"; "abl"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(4,1,"aa2"); (7,1,"aak"); (8,6,"abd"); (5,4,"aa5"); (1,3,"aag"); (7,5,"abg"); (2,4,"abw"); (3,5,"abc"); (5,5,"aar"); (1,6,"abg"); (4,7,"abr"); (5,3,"aao"); (9,7,"aaw"); (5,7,"aby"); (7,4,"abz"); (6,6,"aau"); (2,6,"aa7"); (6,5,"aaj"); (7,3,"aaw"); (6,3,"abn"); (3,1,"ab3"); (2,1,"abb"); (3,3,"abh"); (7,7,"aax"); (5,1,"aao"); (2,3,"abj"); (4,5,"ab7"); (7,6,"abh"); (6,4,"aae"); (1,5,"aa7"); (10,4,"aby"); (6,7,"abz"); (1,1,"abl"); (3,4,"aa3"); (10,7,"abv"); (1,7,"abx"); (9,4,"aak"); (6,1,"ab6"); (10,1,"abh"); (9,6,"aaf"); (9,1,"abt"); (8,1,"ab5"); (10,5,"abq"); (4,6,"ab3"); (5,6,"abe"); (2,7,"aav"); (3,6,"aa5"); (8,4,"abr"); (4,3,"abf"); (2,5,"aaz"); (8,5,"aa4"); (3,7,"aab"); (9,5,"aam"); (8,3,"abc"); (8,7,"aaj"); (10,3,"abq"); (4,4,"abb"); (1,4,"aa2"); (9,3,"aan"); (10,6,"aao")])
        ```
        Matches the result of evaluating
        ```
        [["abl"; ""; "aag"; "aa2"; "aa7"; "abg"; "abx"]; ["abb"; ""; "abj"; "abw"; "aaz"; "aa7"; "aav"]; ["ab3"; ""; "abh"; "aa3"; "abc"; "aa5"; "aab"]; ["aa2"; ""; "abf"; "abb"; "ab7"; "ab3"; "abr"]; ["aao"; ""; "aao"; "aa5"; "aar"; "abe"; "aby"]; ["ab6"; ""; "abn"; "aae"; "aaj"; "aau"; "abz"]; ["aak"; ""; "aaw"; "abz"; "abg"; "abh"; "aax"]; ["ab5"; ""; "abc"; "abr"; "aa4"; "abd"; "aaj"]; ["abt"; ""; "aan"; "aak"; "aam"; "aaf"; "aaw"]; ["abh"; ""; "abq"; "aby"; "abq"; "aao"; "abv"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(7,2,"abc"); (4,4,"aaz"); (4,3,"abb"); (7,3,"abl"); (6,3,"aad"); (5,4,"aaa"); (8,2,"aas"); (4,2,"aax"); (12,4,"abo"); (6,2,"aaz"); (1,4,"abc"); (8,4,"aaa"); (2,3,"aao"); (2,4,"ab2"); (11,4,"aa7"); (7,4,"aal"); (1,2,"aar"); (5,2,"abv"); (1,3,"abn"); (12,3,"aae"); (8,3,"abd"); (10,2,"aae"); (12,2,"ab4"); (9,2,"aad"); (2,2,"aa4"); (11,2,"aak"); (10,3,"aak"); (3,2,"aal"); (5,3,"abf"); (9,4,"aa7"); (3,4,"ab3"); (11,3,"aan"); (9,3,"abd"); (6,4,"abp"); (3,3,"abc"); (10,4,"ab7")])
        ```
        Matches the result of evaluating
        ```
        [[""; "aar"; "abn"; "abc"]; [""; "aa4"; "aao"; "ab2"]; [""; "aal"; "abc"; "ab3"]; [""; "aax"; "abb"; "aaz"]; [""; "abv"; "abf"; "aaa"]; [""; "aaz"; "aad"; "abp"]; [""; "abc"; "abl"; "aal"]; [""; "aas"; "abd"; "aaa"]; [""; "aad"; "abd"; "aa7"]; [""; "aae"; "aak"; "ab7"]; [""; "aak"; "aan"; "aa7"]; [""; "ab4"; "aae"; "abo"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(6,6,"abn"); (8,1,"abr"); (5,5,"abj"); (6,5,"abp"); (9,7,"aag"); (2,4,"aas"); (8,3,"aaw"); (9,1,"abq"); (7,1,"ab6"); (3,5,"aas"); (5,1,"ab4"); (2,7,"aa3"); (7,3,"abi"); (10,7,"aal"); (10,3,"aaz"); (1,3,"abz"); (4,4,"abt"); (7,7,"aak"); (10,6,"aau"); (5,3,"abz"); (4,3,"aar"); (6,7,"abw"); (1,5,"abx"); (7,5,"abo"); (9,5,"abb"); (9,4,"abl"); (8,7,"aab"); (5,7,"abz"); (2,6,"abl"); (3,4,"aax"); (2,1,"aaj"); (1,6,"aax"); (8,4,"aah"); (1,7,"aap"); (8,6,"abv"); (3,6,"abd"); (9,3,"aba"); (9,6,"aay"); (5,4,"abz"); (2,3,"aaf"); (4,5,"aao"); (6,1,"abf"); (6,4,"abj"); (3,1,"aaa"); (10,4,"ab6"); (10,5,"abi"); (4,1,"aau"); (4,6,"ab7"); (8,5,"abq"); (1,1,"aba"); (7,4,"aam"); (10,1,"abh"); (3,7,"aaj"); (1,4,"aai"); (2,5,"abl"); (5,6,"aam"); (4,7,"abv"); (3,3,"aa4"); (7,6,"aav"); (6,3,"abp")])
        ```
        Matches the result of evaluating
        ```
        [["aba"; ""; "abz"; "aai"; "abx"; "aax"; "aap"]; ["aaj"; ""; "aaf"; "aas"; "abl"; "abl"; "aa3"]; ["aaa"; ""; "aa4"; "aax"; "aas"; "abd"; "aaj"]; ["aau"; ""; "aar"; "abt"; "aao"; "ab7"; "abv"]; ["ab4"; ""; "abz"; "abz"; "abj"; "aam"; "abz"]; ["abf"; ""; "abp"; "abj"; "abp"; "abn"; "abw"]; ["ab6"; ""; "abi"; "aam"; "abo"; "aav"; "aak"]; ["abr"; ""; "aaw"; "aah"; "abq"; "abv"; "aab"]; ["abq"; ""; "aba"; "abl"; "abb"; "aay"; "aag"]; ["abh"; ""; "aaz"; "ab6"; "abi"; "aau"; "aal"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(2,2,"abm"); (9,2,"aa4"); (3,3,"ab5"); (2,3,"ab7"); (5,2,"aaa"); (6,3,"aa4"); (4,2,"abr"); (7,2,"abl"); (1,2,"aac"); (1,3,"aar"); (9,3,"aae"); (3,2,"abx"); (10,2,"aam"); (8,3,"abm"); (7,3,"abm"); (5,3,"aa7"); (6,2,"aac"); (8,2,"aak"); (10,3,"abs"); (4,3,"aav")])
        ```
        Matches the result of evaluating
        ```
        [[""; "aac"; "aar"]; [""; "abm"; "ab7"]; [""; "abx"; "ab5"]; [""; "abr"; "aav"]; [""; "aaa"; "aa7"]; [""; "aac"; "aa4"]; [""; "abl"; "abm"]; [""; "aak"; "abm"]; [""; "aa4"; "aae"]; [""; "aam"; "abs"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(2,7,"abo"); (4,7,"aag"); (9,4,"abk"); (7,3,"aae"); (5,6,"aak"); (1,7,"abn"); (6,4,"aar"); (2,1,"aak"); (7,4,"ab5"); (8,6,"abr"); (5,2,"abz"); (6,2,"aap"); (9,5,"abl"); (4,1,"abn"); (6,1,"abk"); (1,1,"aam"); (5,5,"aa7"); (5,3,"abd"); (4,6,"abw"); (5,4,"abj"); (7,7,"aag"); (1,4,"abg"); (1,3,"abd"); (4,5,"aaj"); (8,2,"aaf"); (2,2,"abu"); (1,2,"aas"); (8,5,"ab6"); (1,5,"aaz"); (9,7,"abe"); (1,6,"aa7"); (4,2,"aab"); (8,1,"aay"); (9,6,"aad"); (7,5,"aav"); (6,5,"abd"); (8,3,"abv"); (2,6,"abo"); (6,3,"abw"); (7,1,"abq"); (4,3,"aas"); (2,3,"aa3"); (9,1,"abi"); (5,7,"abu"); (7,6,"abt"); (5,1,"aaf"); (2,5,"aag"); (7,2,"aa3"); (4,4,"aap"); (6,6,"abb"); (8,7,"aa4"); (2,4,"abf"); (9,2,"aas"); (6,7,"aac"); (8,4,"aap"); (9,3,"aaf")])
        ```
        Matches the result of evaluating
        ```
        [["aam"; "aas"; "abd"; "abg"; "aaz"; "aa7"; "abn"]; ["aak"; "abu"; "aa3"; "abf"; "aag"; "abo"; "abo"]; []; ["abn"; "aab"; "aas"; "aap"; "aaj"; "abw"; "aag"]; ["aaf"; "abz"; "abd"; "abj"; "aa7"; "aak"; "abu"]; ["abk"; "aap"; "abw"; "aar"; "abd"; "abb"; "aac"]; ["abq"; "aa3"; "aae"; "ab5"; "aav"; "abt"; "aag"]; ["aay"; "aaf"; "abv"; "aap"; "ab6"; "abr"; "aa4"]; ["abi"; "aas"; "aaf"; "abk"; "abl"; "aad"; "abe"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(3,3,"aab"); (2,2,"aat"); (3,4,"abe"); (4,4,"aar"); (4,5,"abs"); (9,1,"ab6"); (6,3,"aan"); (5,2,"aau"); (7,5,"aao"); (9,4,"aau"); (4,2,"abt"); (8,4,"aa5"); (7,3,"abo"); (7,2,"aby"); (6,5,"ab4"); (4,3,"aam"); (7,4,"abv"); (2,4,"ab7"); (6,2,"aax"); (8,5,"aah"); (8,3,"aai"); (5,3,"abt"); (9,5,"aa5"); (10,3,"aam"); (9,2,"abb"); (2,1,"abx"); (2,3,"aby"); (10,5,"aau"); (10,4,"aav"); (10,1,"abg"); (3,2,"aah"); (5,4,"abs"); (2,5,"abe"); (6,4,"aaw"); (3,1,"abo"); (5,1,"aar"); (8,2,"aba"); (4,1,"aaz"); (9,3,"abi"); (8,1,"aa4"); (5,5,"ab4"); (10,2,"aai"); (3,5,"aag"); (6,1,"abh"); (7,1,"abs")])
        ```
        Matches the result of evaluating
        ```
        [[]; ["abx"; "aat"; "aby"; "ab7"; "abe"]; ["abo"; "aah"; "aab"; "abe"; "aag"]; ["aaz"; "abt"; "aam"; "aar"; "abs"]; ["aar"; "aau"; "abt"; "abs"; "ab4"]; ["abh"; "aax"; "aan"; "aaw"; "ab4"]; ["abs"; "aby"; "abo"; "abv"; "aao"]; ["aa4"; "aba"; "aai"; "aa5"; "aah"]; ["ab6"; "abb"; "abi"; "aau"; "aa5"]; ["abg"; "aai"; "aam"; "aav"; "aau"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(6,3,"aar"); (8,2,"aas"); (5,1,"aam"); (5,2,"aah"); (6,4,"aa7"); (3,3,"ab3"); (6,1,"aa4"); (1,2,"aa3"); (8,4,"abn"); (1,4,"abc"); (3,4,"abi"); (8,3,"ab4"); (5,4,"abi"); (8,1,"abh"); (2,3,"abn"); (1,3,"abv"); (6,2,"aao"); (2,2,"ab3"); (1,1,"aav"); (7,1,"abm"); (2,1,"aaz"); (3,2,"abj"); (7,3,"aat"); (3,1,"aap"); (7,2,"aas"); (2,4,"aan"); (5,3,"ab3"); (7,4,"abx")])
        ```
        Matches the result of evaluating
        ```
        [["aav"; "aa3"; "abv"; "abc"]; ["aaz"; "ab3"; "abn"; "aan"]; ["aap"; "abj"; "ab3"; "abi"]; []; ["aam"; "aah"; "ab3"; "abi"]; ["aa4"; "aao"; "aar"; "aa7"]; ["abm"; "aas"; "aat"; "abx"]; ["abh"; "aas"; "ab4"; "abn"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(1,2,"abz"); (5,1,"abo"); (10,1,"aan"); (3,1,"abt"); (1,3,"abn"); (7,3,"aap"); (12,1,"ab3"); (1,1,"aai"); (6,3,"aah"); (12,2,"abx"); (9,2,"abk"); (11,3,"aao"); (2,2,"aan"); (8,3,"aay"); (2,3,"aaf"); (7,2,"aar"); (11,2,"aas"); (8,2,"abz"); (5,3,"abv"); (9,3,"abp"); (5,2,"aad"); (10,2,"aa4"); (3,2,"abn"); (7,1,"aat"); (9,1,"abz"); (2,1,"aaz"); (3,3,"abn"); (6,1,"abp"); (11,1,"aad"); (6,2,"aag"); (12,3,"aau"); (8,1,"abf"); (10,3,"aab")])
        ```
        Matches the result of evaluating
        ```
        [["aai"; "abz"; "abn"]; ["aaz"; "aan"; "aaf"]; ["abt"; "abn"; "abn"]; []; ["abo"; "aad"; "abv"]; ["abp"; "aag"; "aah"]; ["aat"; "aar"; "aap"]; ["abf"; "abz"; "aay"]; ["abz"; "abk"; "abp"]; ["aan"; "aa4"; "aab"]; ["aad"; "aas"; "aao"]; ["ab3"; "abx"; "aau"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(8,1,"aaj"); (2,2,"aaq"); (2,1,"abt"); (3,2,"aa5"); (2,3,"aaw"); (4,2,"aae"); (6,3,"aaa"); (3,3,"aay"); (8,2,"ab3"); (7,3,"ab7"); (3,1,"ab7"); (5,2,"aay"); (5,1,"aab"); (6,1,"aah"); (7,1,"abe"); (7,2,"aa6"); (6,2,"aa4"); (5,3,"abd"); (4,1,"abh"); (4,3,"abk"); (8,3,"abq")])
        ```
        Matches the result of evaluating
        ```
        [[]; ["abt"; "aaq"; "aaw"]; ["ab7"; "aa5"; "aay"]; ["abh"; "aae"; "abk"]; ["aab"; "aay"; "abd"]; ["aah"; "aa4"; "aaa"]; ["abe"; "aa6"; "ab7"]; ["aaj"; "ab3"; "abq"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(10,1,"aaa"); (1,4,"abh"); (11,3,"aak"); (9,2,"aba"); (12,3,"ab3"); (12,5,"aag"); (6,1,"aaq"); (4,4,"aai"); (12,1,"abv"); (10,3,"abp"); (7,4,"aay"); (10,5,"abz"); (10,4,"aaj"); (2,1,"aag"); (6,2,"abk"); (9,5,"aag"); (4,6,"abz"); (7,1,"ab3"); (4,5,"aav"); (5,6,"abp"); (11,1,"ab6"); (2,4,"aab"); (6,5,"abg"); (8,2,"aa4"); (2,3,"ab4"); (11,5,"abn"); (5,3,"aas"); (1,5,"abq"); (12,2,"abo"); (11,4,"aan"); (1,6,"abb"); (4,1,"ab3"); (7,2,"aad"); (1,1,"abc"); (10,2,"aa6"); (8,6,"aal"); (1,3,"abi"); (9,3,"abl"); (9,4,"abw"); (5,2,"abx"); (8,4,"aa7"); (8,3,"abb"); (4,2,"aaj"); (12,4,"abd"); (11,2,"abb"); (2,5,"abr"); (7,5,"aa2"); (7,3,"aaw"); (6,3,"aay"); (7,6,"abp"); (5,4,"abj"); (2,2,"aa6"); (6,4,"abv"); (9,1,"ab3"); (9,6,"aab"); (11,6,"abu"); (6,6,"abv"); (8,1,"aak"); (1,2,"aar"); (10,6,"abi"); (12,6,"abl"); (8,5,"aar"); (2,6,"aao"); (5,5,"aak"); (5,1,"abk"); (4,3,"aae")])
        ```
        Matches the result of evaluating
        ```
        [["abc"; "aar"; "abi"; "abh"; "abq"; "abb"]; ["aag"; "aa6"; "ab4"; "aab"; "abr"; "aao"]; []; ["ab3"; "aaj"; "aae"; "aai"; "aav"; "abz"]; ["abk"; "abx"; "aas"; "abj"; "aak"; "abp"]; ["aaq"; "abk"; "aay"; "abv"; "abg"; "abv"]; ["ab3"; "aad"; "aaw"; "aay"; "aa2"; "abp"]; ["aak"; "aa4"; "abb"; "aa7"; "aar"; "aal"]; ["ab3"; "aba"; "abl"; "abw"; "aag"; "aab"]; ["aaa"; "aa6"; "abp"; "aaj"; "abz"; "abi"]; ["ab6"; "abb"; "aak"; "aan"; "abn"; "abu"]; ["abv"; "abo"; "ab3"; "abd"; "aag"; "abl"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(4,1,"aa2"); (7,1,"aak"); (5,4,"aa5"); (1,3,"aag"); (7,5,"abg"); (2,4,"abw"); (3,5,"abc"); (5,5,"aar"); (1,6,"abg"); (4,7,"abr"); (5,3,"aao"); (9,7,"aaw"); (5,7,"aby"); (7,4,"abz"); (6,6,"aau"); (2,6,"aa7"); (6,5,"aaj"); (7,3,"aaw"); (6,3,"abn"); (3,1,"ab3"); (2,1,"abb"); (3,3,"abh"); (7,7,"aax"); (5,1,"aao"); (2,3,"abj"); (4,5,"ab7"); (4,2,"aas"); (7,6,"abh"); (6,4,"aae"); (1,2,"aao"); (10,2,"aaz"); (1,5,"aa7"); (10,4,"aby"); (6,7,"abz"); (1,1,"abl"); (2,2,"aac"); (3,4,"aa3"); (5,2,"abq"); (10,7,"abv"); (1,7,"abx"); (9,4,"aak"); (6,1,"ab6"); (10,1,"abh"); (7,2,"aae"); (9,6,"aaf"); (9,1,"abt"); (10,5,"abq"); (4,6,"ab3"); (5,6,"abe"); (2,7,"aav"); (3,6,"aa5"); (4,3,"abf"); (2,5,"aaz"); (3,7,"aab"); (9,5,"aam"); (9,2,"abf"); (10,3,"abq"); (4,4,"abb"); (3,2,"aaj"); (1,4,"aa2"); (9,3,"aan"); (10,6,"aao"); (6,2,"abg")])
        ```
        Matches the result of evaluating
        ```
        [["abl"; "aao"; "aag"; "aa2"; "aa7"; "abg"; "abx"]; ["abb"; "aac"; "abj"; "abw"; "aaz"; "aa7"; "aav"]; ["ab3"; "aaj"; "abh"; "aa3"; "abc"; "aa5"; "aab"]; ["aa2"; "aas"; "abf"; "abb"; "ab7"; "ab3"; "abr"]; ["aao"; "abq"; "aao"; "aa5"; "aar"; "abe"; "aby"]; ["ab6"; "abg"; "abn"; "aae"; "aaj"; "aau"; "abz"]; ["aak"; "aae"; "aaw"; "abz"; "abg"; "abh"; "aax"]; []; ["abt"; "abf"; "aan"; "aak"; "aam"; "aaf"; "aaw"]; ["abh"; "aaz"; "abq"; "aby"; "abq"; "aao"; "abv"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(7,2,"abc"); (8,1,"aa5"); (5,1,"aa4"); (7,3,"abl"); (2,1,"ab7"); (6,3,"aad"); (10,1,"aby"); (5,4,"aaa"); (8,2,"aas"); (6,1,"ab6"); (12,4,"abo"); (6,2,"aaz"); (1,4,"abc"); (8,4,"aaa"); (7,1,"abj"); (2,3,"aao"); (2,4,"ab2"); (11,4,"aa7"); (3,1,"aak"); (7,4,"aal"); (1,2,"aar"); (12,1,"aa2"); (5,2,"abv"); (1,3,"abn"); (12,3,"aae"); (11,1,"aaq"); (8,3,"abd"); (9,1,"abv"); (10,2,"aae"); (12,2,"ab4"); (9,2,"aad"); (1,1,"abf"); (2,2,"aa4"); (11,2,"aak"); (10,3,"aak"); (3,2,"aal"); (5,3,"abf"); (9,4,"aa7"); (3,4,"ab3"); (11,3,"aan"); (9,3,"abd"); (6,4,"abp"); (3,3,"abc"); (10,4,"ab7")])
        ```
        Matches the result of evaluating
        ```
        [["abf"; "aar"; "abn"; "abc"]; ["ab7"; "aa4"; "aao"; "ab2"]; ["aak"; "aal"; "abc"; "ab3"]; []; ["aa4"; "abv"; "abf"; "aaa"]; ["ab6"; "aaz"; "aad"; "abp"]; ["abj"; "abc"; "abl"; "aal"]; ["aa5"; "aas"; "abd"; "aaa"]; ["abv"; "aad"; "abd"; "aa7"]; ["aby"; "aae"; "aak"; "ab7"]; ["aaq"; "aak"; "aan"; "aa7"]; ["aa2"; "ab4"; "aae"; "abo"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(4,2,"abx"); (9,2,"aaa"); (8,1,"abr"); (5,5,"abj"); (3,2,"aaf"); (9,7,"aag"); (2,4,"aas"); (8,3,"aaw"); (9,1,"abq"); (7,2,"aag"); (7,1,"ab6"); (3,5,"aas"); (5,1,"ab4"); (2,7,"aa3"); (7,3,"abi"); (10,7,"aal"); (10,3,"aaz"); (1,3,"abz"); (4,4,"abt"); (7,7,"aak"); (10,6,"aau"); (5,3,"abz"); (4,3,"aar"); (1,5,"abx"); (7,5,"abo"); (9,5,"abb"); (9,4,"abl"); (8,7,"aab"); (8,2,"abg"); (5,7,"abz"); (2,6,"abl"); (1,2,"abm"); (3,4,"aax"); (2,1,"aaj"); (1,6,"aax"); (8,4,"aah"); (1,7,"aap"); (8,6,"abv"); (3,6,"abd"); (9,3,"aba"); (9,6,"aay"); (5,4,"abz"); (2,3,"aaf"); (4,5,"aao"); (3,1,"aaa"); (10,4,"ab6"); (10,5,"abi"); (4,1,"aau"); (5,2,"abt"); (4,6,"ab7"); (8,5,"abq"); (1,1,"aba"); (7,4,"aam"); (10,1,"abh"); (10,2,"abu"); (3,7,"aaj"); (1,4,"aai"); (2,5,"abl"); (5,6,"aam"); (4,7,"abv"); (3,3,"aa4"); (7,6,"aav"); (2,2,"aaa")])
        ```
        Matches the result of evaluating
        ```
        [["aba"; "abm"; "abz"; "aai"; "abx"; "aax"; "aap"]; ["aaj"; "aaa"; "aaf"; "aas"; "abl"; "abl"; "aa3"]; ["aaa"; "aaf"; "aa4"; "aax"; "aas"; "abd"; "aaj"]; ["aau"; "abx"; "aar"; "abt"; "aao"; "ab7"; "abv"]; ["ab4"; "abt"; "abz"; "abz"; "abj"; "aam"; "abz"]; []; ["ab6"; "aag"; "abi"; "aam"; "abo"; "aav"; "aak"]; ["abr"; "abg"; "aaw"; "aah"; "abq"; "abv"; "aab"]; ["abq"; "aaa"; "aba"; "abl"; "abb"; "aay"; "aag"]; ["abh"; "abu"; "aaz"; "ab6"; "abi"; "aau"; "aal"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(2,2,"abm"); (6,1,"abl"); (9,2,"aa4"); (2,3,"ab7"); (5,2,"aaa"); (2,1,"aat"); (7,1,"aby"); (9,1,"aav"); (6,3,"aa4"); (4,2,"abr"); (7,2,"abl"); (4,1,"abp"); (10,1,"ab4"); (1,2,"aac"); (1,3,"aar"); (9,3,"aae"); (10,2,"aam"); (5,1,"abw"); (8,3,"abm"); (7,3,"abm"); (5,3,"aa7"); (6,2,"aac"); (8,2,"aak"); (8,1,"aau"); (10,3,"abs"); (1,1,"abt"); (4,3,"aav")])
        ```
        Matches the result of evaluating
        ```
        [["abt"; "aac"; "aar"]; ["aat"; "abm"; "ab7"]; []; ["abp"; "abr"; "aav"]; ["abw"; "aaa"; "aa7"]; ["abl"; "aac"; "aa4"]; ["aby"; "abl"; "abm"]; ["aau"; "aak"; "abm"]; ["aav"; "aa4"; "aae"]; ["ab4"; "aam"; "abs"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(2,7,"abo"); (4,7,"aag"); (9,4,"abk"); (5,6,"aak"); (1,7,"abn"); (6,4,"aar"); (2,1,"aak"); (7,4,"ab5"); (8,6,"abr"); (5,2,"abz"); (6,2,"aap"); (9,5,"abl"); (4,1,"abn"); (6,1,"abk"); (1,1,"aam"); (5,5,"aa7"); (4,6,"abw"); (5,4,"abj"); (7,7,"aag"); (1,4,"abg"); (4,5,"aaj"); (8,2,"aaf"); (2,2,"abu"); (1,2,"aas"); (8,5,"ab6"); (1,5,"aaz"); (9,7,"abe"); (1,6,"aa7"); (4,2,"aab"); (8,1,"aay"); (9,6,"aad"); (7,5,"aav"); (6,5,"abd"); (2,6,"abo"); (7,1,"abq"); (9,1,"abi"); (5,7,"abu"); (7,6,"abt"); (5,1,"aaf"); (2,5,"aag"); (7,2,"aa3"); (4,4,"aap"); (6,6,"abb"); (8,7,"aa4"); (2,4,"abf"); (9,2,"aas"); (6,7,"aac"); (8,4,"aap")])
        ```
        Matches the result of evaluating
        ```
        [["aam"; "aas"; ""; "abg"; "aaz"; "aa7"; "abn"]; ["aak"; "abu"; ""; "abf"; "aag"; "abo"; "abo"]; []; ["abn"; "aab"; ""; "aap"; "aaj"; "abw"; "aag"]; ["aaf"; "abz"; ""; "abj"; "aa7"; "aak"; "abu"]; ["abk"; "aap"; ""; "aar"; "abd"; "abb"; "aac"]; ["abq"; "aa3"; ""; "ab5"; "aav"; "abt"; "aag"]; ["aay"; "aaf"; ""; "aap"; "ab6"; "abr"; "aa4"]; ["abi"; "aas"; ""; "abk"; "abl"; "aad"; "abe"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(3,3,"aab"); (3,4,"abe"); (4,4,"aar"); (4,5,"abs"); (9,1,"ab6"); (6,3,"aan"); (7,5,"aao"); (9,4,"aau"); (8,4,"aa5"); (7,3,"abo"); (6,5,"ab4"); (4,3,"aam"); (7,4,"abv"); (2,4,"ab7"); (8,5,"aah"); (8,3,"aai"); (5,3,"abt"); (9,5,"aa5"); (10,3,"aam"); (2,1,"abx"); (2,3,"aby"); (10,5,"aau"); (10,4,"aav"); (10,1,"abg"); (5,4,"abs"); (2,5,"abe"); (6,4,"aaw"); (3,1,"abo"); (5,1,"aar"); (4,1,"aaz"); (9,3,"abi"); (8,1,"aa4"); (5,5,"ab4"); (3,5,"aag"); (6,1,"abh"); (7,1,"abs")])
        ```
        Matches the result of evaluating
        ```
        [[]; ["abx"; ""; "aby"; "ab7"; "abe"]; ["abo"; ""; "aab"; "abe"; "aag"]; ["aaz"; ""; "aam"; "aar"; "abs"]; ["aar"; ""; "abt"; "abs"; "ab4"]; ["abh"; ""; "aan"; "aaw"; "ab4"]; ["abs"; ""; "abo"; "abv"; "aao"]; ["aa4"; ""; "aai"; "aa5"; "aah"]; ["ab6"; ""; "abi"; "aau"; "aa5"]; ["abg"; ""; "aam"; "aav"; "aau"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(6,3,"aar"); (8,2,"aas"); (5,2,"aah"); (6,4,"aa7"); (3,3,"ab3"); (1,2,"aa3"); (8,4,"abn"); (1,4,"abc"); (3,4,"abi"); (8,3,"ab4"); (5,4,"abi"); (2,3,"abn"); (1,3,"abv"); (6,2,"aao"); (2,2,"ab3"); (3,2,"abj"); (7,3,"aat"); (7,2,"aas"); (2,4,"aan"); (5,3,"ab3"); (7,4,"abx")])
        ```
        Matches the result of evaluating
        ```
        [[""; "aa3"; "abv"; "abc"]; [""; "ab3"; "abn"; "aan"]; [""; "abj"; "ab3"; "abi"]; []; [""; "aah"; "ab3"; "abi"]; [""; "aao"; "aar"; "aa7"]; [""; "aas"; "aat"; "abx"]; [""; "aas"; "ab4"; "abn"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(1,2,"abz"); (1,3,"abn"); (7,3,"aap"); (6,3,"aah"); (12,2,"abx"); (9,2,"abk"); (11,3,"aao"); (2,2,"aan"); (8,3,"aay"); (2,3,"aaf"); (7,2,"aar"); (11,2,"aas"); (8,2,"abz"); (5,3,"abv"); (9,3,"abp"); (5,2,"aad"); (10,2,"aa4"); (3,2,"abn"); (3,3,"abn"); (6,2,"aag"); (12,3,"aau"); (10,3,"aab")])
        ```
        Matches the result of evaluating
        ```
        [[""; "abz"; "abn"]; [""; "aan"; "aaf"]; [""; "abn"; "abn"]; []; [""; "aad"; "abv"]; [""; "aag"; "aah"]; [""; "aar"; "aap"]; [""; "abz"; "aay"]; [""; "abk"; "abp"]; [""; "aa4"; "aab"]; [""; "aas"; "aao"]; [""; "abx"; "aau"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(2,2,"aaq"); (3,2,"aa5"); (2,3,"aaw"); (4,2,"aae"); (6,3,"aaa"); (3,3,"aay"); (8,2,"ab3"); (7,3,"ab7"); (5,2,"aay"); (7,2,"aa6"); (6,2,"aa4"); (5,3,"abd"); (4,3,"abk"); (8,3,"abq")])
        ```
        Matches the result of evaluating
        ```
        [[]; [""; "aaq"; "aaw"]; [""; "aa5"; "aay"]; [""; "aae"; "abk"]; [""; "aay"; "abd"]; [""; "aa4"; "aaa"]; [""; "aa6"; "ab7"]; [""; "ab3"; "abq"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(10,1,"aaa"); (1,4,"abh"); (9,2,"aba"); (12,5,"aag"); (6,1,"aaq"); (4,4,"aai"); (12,1,"abv"); (7,4,"aay"); (10,5,"abz"); (10,4,"aaj"); (2,1,"aag"); (6,2,"abk"); (9,5,"aag"); (4,6,"abz"); (7,1,"ab3"); (4,5,"aav"); (5,6,"abp"); (11,1,"ab6"); (2,4,"aab"); (6,5,"abg"); (8,2,"aa4"); (11,5,"abn"); (1,5,"abq"); (12,2,"abo"); (11,4,"aan"); (1,6,"abb"); (4,1,"ab3"); (7,2,"aad"); (1,1,"abc"); (10,2,"aa6"); (8,6,"aal"); (9,4,"abw"); (5,2,"abx"); (8,4,"aa7"); (4,2,"aaj"); (12,4,"abd"); (11,2,"abb"); (2,5,"abr"); (7,5,"aa2"); (7,6,"abp"); (5,4,"abj"); (2,2,"aa6"); (6,4,"abv"); (9,1,"ab3"); (9,6,"aab"); (11,6,"abu"); (6,6,"abv"); (8,1,"aak"); (1,2,"aar"); (10,6,"abi"); (12,6,"abl"); (8,5,"aar"); (2,6,"aao"); (5,5,"aak"); (5,1,"abk")])
        ```
        Matches the result of evaluating
        ```
        [["abc"; "aar"; ""; "abh"; "abq"; "abb"]; ["aag"; "aa6"; ""; "aab"; "abr"; "aao"]; []; ["ab3"; "aaj"; ""; "aai"; "aav"; "abz"]; ["abk"; "abx"; ""; "abj"; "aak"; "abp"]; ["aaq"; "abk"; ""; "abv"; "abg"; "abv"]; ["ab3"; "aad"; ""; "aay"; "aa2"; "abp"]; ["aak"; "aa4"; ""; "aa7"; "aar"; "aal"]; ["ab3"; "aba"; ""; "abw"; "aag"; "aab"]; ["aaa"; "aa6"; ""; "aaj"; "abz"; "abi"]; ["ab6"; "abb"; ""; "aan"; "abn"; "abu"]; ["abv"; "abo"; ""; "abd"; "aag"; "abl"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(4,1,"aa2"); (7,1,"aak"); (5,4,"aa5"); (1,3,"aag"); (7,5,"abg"); (2,4,"abw"); (3,5,"abc"); (5,5,"aar"); (1,6,"abg"); (4,7,"abr"); (5,3,"aao"); (9,7,"aaw"); (5,7,"aby"); (7,4,"abz"); (6,6,"aau"); (2,6,"aa7"); (6,5,"aaj"); (7,3,"aaw"); (6,3,"abn"); (3,1,"ab3"); (2,1,"abb"); (3,3,"abh"); (7,7,"aax"); (5,1,"aao"); (2,3,"abj"); (4,5,"ab7"); (7,6,"abh"); (6,4,"aae"); (1,5,"aa7"); (10,4,"aby"); (6,7,"abz"); (1,1,"abl"); (3,4,"aa3"); (10,7,"abv"); (1,7,"abx"); (9,4,"aak"); (6,1,"ab6"); (10,1,"abh"); (9,6,"aaf"); (9,1,"abt"); (10,5,"abq"); (4,6,"ab3"); (5,6,"abe"); (2,7,"aav"); (3,6,"aa5"); (4,3,"abf"); (2,5,"aaz"); (3,7,"aab"); (9,5,"aam"); (10,3,"abq"); (4,4,"abb"); (1,4,"aa2"); (9,3,"aan"); (10,6,"aao")])
        ```
        Matches the result of evaluating
        ```
        [["abl"; ""; "aag"; "aa2"; "aa7"; "abg"; "abx"]; ["abb"; ""; "abj"; "abw"; "aaz"; "aa7"; "aav"]; ["ab3"; ""; "abh"; "aa3"; "abc"; "aa5"; "aab"]; ["aa2"; ""; "abf"; "abb"; "ab7"; "ab3"; "abr"]; ["aao"; ""; "aao"; "aa5"; "aar"; "abe"; "aby"]; ["ab6"; ""; "abn"; "aae"; "aaj"; "aau"; "abz"]; ["aak"; ""; "aaw"; "abz"; "abg"; "abh"; "aax"]; []; ["abt"; ""; "aan"; "aak"; "aam"; "aaf"; "aaw"]; ["abh"; ""; "abq"; "aby"; "abq"; "aao"; "abv"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(7,2,"abc"); (7,3,"abl"); (6,3,"aad"); (5,4,"aaa"); (8,2,"aas"); (12,4,"abo"); (6,2,"aaz"); (1,4,"abc"); (8,4,"aaa"); (2,3,"aao"); (2,4,"ab2"); (11,4,"aa7"); (7,4,"aal"); (1,2,"aar"); (5,2,"abv"); (1,3,"abn"); (12,3,"aae"); (8,3,"abd"); (10,2,"aae"); (12,2,"ab4"); (9,2,"aad"); (2,2,"aa4"); (11,2,"aak"); (10,3,"aak"); (3,2,"aal"); (5,3,"abf"); (9,4,"aa7"); (3,4,"ab3"); (11,3,"aan"); (9,3,"abd"); (6,4,"abp"); (3,3,"abc"); (10,4,"ab7")])
        ```
        Matches the result of evaluating
        ```
        [[""; "aar"; "abn"; "abc"]; [""; "aa4"; "aao"; "ab2"]; [""; "aal"; "abc"; "ab3"]; []; [""; "abv"; "abf"; "aaa"]; [""; "aaz"; "aad"; "abp"]; [""; "abc"; "abl"; "aal"]; [""; "aas"; "abd"; "aaa"]; [""; "aad"; "abd"; "aa7"]; [""; "aae"; "aak"; "ab7"]; [""; "aak"; "aan"; "aa7"]; [""; "ab4"; "aae"; "abo"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(8,1,"abr"); (5,5,"abj"); (9,7,"aag"); (2,4,"aas"); (8,3,"aaw"); (9,1,"abq"); (7,1,"ab6"); (3,5,"aas"); (5,1,"ab4"); (2,7,"aa3"); (7,3,"abi"); (10,7,"aal"); (10,3,"aaz"); (1,3,"abz"); (4,4,"abt"); (7,7,"aak"); (10,6,"aau"); (5,3,"abz"); (4,3,"aar"); (1,5,"abx"); (7,5,"abo"); (9,5,"abb"); (9,4,"abl"); (8,7,"aab"); (5,7,"abz"); (2,6,"abl"); (3,4,"aax"); (2,1,"aaj"); (1,6,"aax"); (8,4,"aah"); (1,7,"aap"); (8,6,"abv"); (3,6,"abd"); (9,3,"aba"); (9,6,"aay"); (5,4,"abz"); (2,3,"aaf"); (4,5,"aao"); (3,1,"aaa"); (10,4,"ab6"); (10,5,"abi"); (4,1,"aau"); (4,6,"ab7"); (8,5,"abq"); (1,1,"aba"); (7,4,"aam"); (10,1,"abh"); (3,7,"aaj"); (1,4,"aai"); (2,5,"abl"); (5,6,"aam"); (4,7,"abv"); (3,3,"aa4"); (7,6,"aav")])
        ```
        Matches the result of evaluating
        ```
        [["aba"; ""; "abz"; "aai"; "abx"; "aax"; "aap"]; ["aaj"; ""; "aaf"; "aas"; "abl"; "abl"; "aa3"]; ["aaa"; ""; "aa4"; "aax"; "aas"; "abd"; "aaj"]; ["aau"; ""; "aar"; "abt"; "aao"; "ab7"; "abv"]; ["ab4"; ""; "abz"; "abz"; "abj"; "aam"; "abz"]; []; ["ab6"; ""; "abi"; "aam"; "abo"; "aav"; "aak"]; ["abr"; ""; "aaw"; "aah"; "abq"; "abv"; "aab"]; ["abq"; ""; "aba"; "abl"; "abb"; "aay"; "aag"]; ["abh"; ""; "aaz"; "ab6"; "abi"; "aau"; "aal"]]
        ```
        

+  _0.15_ / _0.15_ : Pass: 
        Check that the result of evaluating
        ```
         (Tables.table_of_assoc [(2,2,"abm"); (9,2,"aa4"); (2,3,"ab7"); (5,2,"aaa"); (6,3,"aa4"); (4,2,"abr"); (7,2,"abl"); (1,2,"aac"); (1,3,"aar"); (9,3,"aae"); (10,2,"aam"); (8,3,"abm"); (7,3,"abm"); (5,3,"aa7"); (6,2,"aac"); (8,2,"aak"); (10,3,"abs"); (4,3,"aav")])
        ```
        Matches the result of evaluating
        ```
        [[""; "aac"; "aar"]; [""; "abm"; "ab7"]; []; [""; "abr"; "aav"]; [""; "aaa"; "aa7"]; [""; "aac"; "aa4"]; [""; "abl"; "abm"]; [""; "aak"; "abm"]; [""; "aa4"; "aae"]; [""; "aam"; "abs"]]
        ```
        

#### Subtotal: _6.0000000000000036_ / _6.0000000000000036_

## Manual tests entered by TA: omdal007

+ Pass: Check that file "tables.ml" exists.

+  _6_ / _7_ : Pass: 
    Useful comments and indentation
    
    
     Score (out of 2):1 
    Appropriate task decomposition into helper functions
    
    
     Score (out of 2):2 
    Uses an appropriate/efficient algorithm
    
    
     Score (out of 2):2 
    Correct tail recursion
    
    
     Score (out of 1):1 


+ Pass: Other Stylistic Comments & Feedback

    

#### Subtotal: _6_ / _7_

