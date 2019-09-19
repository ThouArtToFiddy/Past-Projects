## Assessment for HW1 table_of_stringlist

Run on February 16, 09:45:40 AM.

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
   table_of_stringlist "," ["a"]
   ```
   matches the pattern `[["a"]]`.

   




+  _1.6666666666666667_ / _1.6666666666666667_ : Pass: 
Check that the result of evaluating
   ```
   table_of_stringlist "," ["a,b"]
   ```
   matches the pattern `[["a"; "b"]]`.

   




+  _1.6666666666666667_ / _1.6666666666666667_ : Pass: 
Check that the result of evaluating
   ```
   table_of_stringlist "|" ["a|b|c"; "d"]
   ```
   matches the pattern `[["a";"b";"c"]; ["d"]]`.

   




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


+  _0_ / _0.25_ : Fail: 
        Check that the result of evaluating
        ```
         (Tables.table_of_stringlist "," ["aam,aas,abd,abg,aaz,aa7,abn";"aak,abu,aa3,abf,aag,abo,abo";"ab4,abm,aal,aba,aaj,abr,aah";"abn,aab,aas,aap,aaj,abw,aag";"aaf,abz,abd,abj,aa7,aak,abu";"abk,aap,abw,aar,abd,abb,aac";"abq,aa3,aae,ab5,aav,abt,aag";"aay,aaf,abv,aap,ab6,abr,aa4";"abi,aas,aaf,abk,abl,aad,abe"])
        ```
        Matches the result of evaluating
        ```
        [["aam"; "aas"; "abd"; "abg"; "aaz"; "aa7"; "abn"]; ["aak"; "abu"; "aa3"; "abf"; "aag"; "abo"; "abo"]; ["ab4"; "abm"; "aal"; "aba"; "aaj"; "abr"; "aah"]; ["abn"; "aab"; "aas"; "aap"; "aaj"; "abw"; "aag"]; ["aaf"; "abz"; "abd"; "abj"; "aa7"; "aak"; "abu"]; ["abk"; "aap"; "abw"; "aar"; "abd"; "abb"; "aac"]; ["abq"; "aa3"; "aae"; "ab5"; "aav"; "abt"; "aag"]; ["aay"; "aaf"; "abv"; "aap"; "ab6"; "abr"; "aa4"]; ["abi"; "aas"; "aaf"; "abk"; "abl"; "aad"; "abe"]]
        ```
        

FAILED with output:

```    val expected : string list list =

  [["aam"; "aas"; "abd"; "abg"; "aaz"; "aa7"; "abn"];

   ["aak"; "abu"; "aa3"; "abf"; "aag"; "abo"; "abo"];

   ["ab4"; "abm"; "aal"; "aba"; "aaj"; "abr"; "aah"];

   ["abn"; "aab"; "aas"; "aap"; "aaj"; "abw"; "aag"];

   ["aaf"; "abz"; "abd"; "abj"; "aa7"; "aak"; "abu"];

   ["abk"; "aap"; "abw"; "aar"; "abd"; "abb"; "aac"];

   ["abq"; "aa3"; "aae"; "ab5"; "aav"; "abt"; "aag"];

   ["aay"; "aaf"; "abv"; "aap"; "ab6"; "abr"; "aa4"];

   ["abi"; "aas"; "aaf"; "abk"; "abl"; "aad"; "abe"]]

 val result : string list list =

  [["aaf"; "abz"; "abd"; "abj"; "aa7"; "aak"; "abu"];

   ["aak"; "abu"; "aa3"; "abf"; "aag"; "abo"; "abo"];

   ["aam"; "aas"; "abd"; "abg"; "aaz"; "aa7"; "abn"];

   ["aay"; "aaf"; "abv"; "aap"; "ab6"; "abr"; "aa4"];

   ["ab4"; "abm"; "aal"; "aba"; "aaj"; "abr"; "aah"];

   ["abi"; "aas"; "aaf"; "abk"; "abl"; "aad"; "abe"];

   ["abk"; "aap"; "abw"; "aar"; "abd"; "abb"; "aac"];

   ["abn"; "aab"; "aas"; "aap"; "aaj"; "abw"; "aag"];

   ["abq"; "aa3"; "aae"; "ab5"; "aav"; "abt"; "aag"]]

```

+  _0_ / _0.25_ : Fail: 
        Check that the result of evaluating
        ```
         (Tables.table_of_stringlist "|" ["aam|aas|abd|abg|aaz|aa7|abn";"aak|abu|aa3|abf|aag|abo|abo";"ab4|abm|aal|aba|aaj|abr|aah";"abn|aab|aas|aap|aaj|abw|aag";"aaf|abz|abd|abj|aa7|aak|abu";"abk|aap|abw|aar|abd|abb|aac";"abq|aa3|aae|ab5|aav|abt|aag";"aay|aaf|abv|aap|ab6|abr|aa4";"abi|aas|aaf|abk|abl|aad|abe"])
        ```
        Matches the result of evaluating
        ```
        [["aam"; "aas"; "abd"; "abg"; "aaz"; "aa7"; "abn"]; ["aak"; "abu"; "aa3"; "abf"; "aag"; "abo"; "abo"]; ["ab4"; "abm"; "aal"; "aba"; "aaj"; "abr"; "aah"]; ["abn"; "aab"; "aas"; "aap"; "aaj"; "abw"; "aag"]; ["aaf"; "abz"; "abd"; "abj"; "aa7"; "aak"; "abu"]; ["abk"; "aap"; "abw"; "aar"; "abd"; "abb"; "aac"]; ["abq"; "aa3"; "aae"; "ab5"; "aav"; "abt"; "aag"]; ["aay"; "aaf"; "abv"; "aap"; "ab6"; "abr"; "aa4"]; ["abi"; "aas"; "aaf"; "abk"; "abl"; "aad"; "abe"]]
        ```
        

FAILED with output:

```    val expected : string list list =

  [["aam"; "aas"; "abd"; "abg"; "aaz"; "aa7"; "abn"];

   ["aak"; "abu"; "aa3"; "abf"; "aag"; "abo"; "abo"];

   ["ab4"; "abm"; "aal"; "aba"; "aaj"; "abr"; "aah"];

   ["abn"; "aab"; "aas"; "aap"; "aaj"; "abw"; "aag"];

   ["aaf"; "abz"; "abd"; "abj"; "aa7"; "aak"; "abu"];

   ["abk"; "aap"; "abw"; "aar"; "abd"; "abb"; "aac"];

   ["abq"; "aa3"; "aae"; "ab5"; "aav"; "abt"; "aag"];

   ["aay"; "aaf"; "abv"; "aap"; "ab6"; "abr"; "aa4"];

   ["abi"; "aas"; "aaf"; "abk"; "abl"; "aad"; "abe"]]

 val result : string list list =

  [["aaf"; "abz"; "abd"; "abj"; "aa7"; "aak"; "abu"];

   ["aak"; "abu"; "aa3"; "abf"; "aag"; "abo"; "abo"];

   ["aam"; "aas"; "abd"; "abg"; "aaz"; "aa7"; "abn"];

   ["aay"; "aaf"; "abv"; "aap"; "ab6"; "abr"; "aa4"];

   ["ab4"; "abm"; "aal"; "aba"; "aaj"; "abr"; "aah"];

   ["abi"; "aas"; "aaf"; "abk"; "abl"; "aad"; "abe"];

   ["abk"; "aap"; "abw"; "aar"; "abd"; "abb"; "aac"];

   ["abn"; "aab"; "aas"; "aap"; "aaj"; "abw"; "aag"];

   ["abq"; "aa3"; "aae"; "ab5"; "aav"; "abt"; "aag"]]

```

+  _0_ / _0.25_ : Fail: 
        Check that the result of evaluating
        ```
         (Tables.table_of_stringlist "," ["abo,aaa,aby,aau,aae";"abx,aat,aby,ab7,abe";"abo,aah,aab,abe,aag";"aaz,abt,aam,aar,abs";"aar,aau,abt,abs,ab4";"abh,aax,aan,aaw,ab4";"abs,aby,abo,abv,aao";"aa4,aba,aai,aa5,aah";"ab6,abb,abi,aau,aa5";"abg,aai,aam,aav,aau"])
        ```
        Matches the result of evaluating
        ```
        [["abo"; "aaa"; "aby"; "aau"; "aae"]; ["abx"; "aat"; "aby"; "ab7"; "abe"]; ["abo"; "aah"; "aab"; "abe"; "aag"]; ["aaz"; "abt"; "aam"; "aar"; "abs"]; ["aar"; "aau"; "abt"; "abs"; "ab4"]; ["abh"; "aax"; "aan"; "aaw"; "ab4"]; ["abs"; "aby"; "abo"; "abv"; "aao"]; ["aa4"; "aba"; "aai"; "aa5"; "aah"]; ["ab6"; "abb"; "abi"; "aau"; "aa5"]; ["abg"; "aai"; "aam"; "aav"; "aau"]]
        ```
        

FAILED with output:

```    val expected : string list list =

  [["abo"; "aaa"; "aby"; "aau"; "aae"]; ["abx"; "aat"; "aby"; "ab7"; "abe"];

   ["abo"; "aah"; "aab"; "abe"; "aag"]; ["aaz"; "abt"; "aam"; "aar"; "abs"];

   ["aar"; "aau"; "abt"; "abs"; "ab4"]; ["abh"; "aax"; "aan"; "aaw"; "ab4"];

   ["abs"; "aby"; "abo"; "abv"; "aao"]; ["aa4"; "aba"; "aai"; "aa5"; "aah"];

   ["ab6"; "abb"; "abi"; "aau"; "aa5"]; ["abg"; "aai"; "aam"; "aav"; "aau"]]

 val result : string list list =

  [["aa4"; "aba"; "aai"; "aa5"; "aah"]; ["aar"; "aau"; "abt"; "abs"; "ab4"];

   ["aaz"; "abt"; "aam"; "aar"; "abs"]; ["ab6"; "abb"; "abi"; "aau"; "aa5"];

   ["abg"; "aai"; "aam"; "aav"; "aau"]; ["abh"; "aax"; "aan"; "aaw"; "ab4"];

   ["abo"; "aaa"; "aby"; "aau"; "aae"]; ["abo"; "aah"; "aab"; "abe"; "aag"];

   ["abs"; "aby"; "abo"; "abv"; "aao"]; ["abx"; "aat"; "aby"; "ab7"; "abe"]]

```

+  _0_ / _0.25_ : Fail: 
        Check that the result of evaluating
        ```
         (Tables.table_of_stringlist "|" ["abo|aaa|aby|aau|aae";"abx|aat|aby|ab7|abe";"abo|aah|aab|abe|aag";"aaz|abt|aam|aar|abs";"aar|aau|abt|abs|ab4";"abh|aax|aan|aaw|ab4";"abs|aby|abo|abv|aao";"aa4|aba|aai|aa5|aah";"ab6|abb|abi|aau|aa5";"abg|aai|aam|aav|aau"])
        ```
        Matches the result of evaluating
        ```
        [["abo"; "aaa"; "aby"; "aau"; "aae"]; ["abx"; "aat"; "aby"; "ab7"; "abe"]; ["abo"; "aah"; "aab"; "abe"; "aag"]; ["aaz"; "abt"; "aam"; "aar"; "abs"]; ["aar"; "aau"; "abt"; "abs"; "ab4"]; ["abh"; "aax"; "aan"; "aaw"; "ab4"]; ["abs"; "aby"; "abo"; "abv"; "aao"]; ["aa4"; "aba"; "aai"; "aa5"; "aah"]; ["ab6"; "abb"; "abi"; "aau"; "aa5"]; ["abg"; "aai"; "aam"; "aav"; "aau"]]
        ```
        

FAILED with output:

```    val expected : string list list =

  [["abo"; "aaa"; "aby"; "aau"; "aae"]; ["abx"; "aat"; "aby"; "ab7"; "abe"];

   ["abo"; "aah"; "aab"; "abe"; "aag"]; ["aaz"; "abt"; "aam"; "aar"; "abs"];

   ["aar"; "aau"; "abt"; "abs"; "ab4"]; ["abh"; "aax"; "aan"; "aaw"; "ab4"];

   ["abs"; "aby"; "abo"; "abv"; "aao"]; ["aa4"; "aba"; "aai"; "aa5"; "aah"];

   ["ab6"; "abb"; "abi"; "aau"; "aa5"]; ["abg"; "aai"; "aam"; "aav"; "aau"]]

 val result : string list list =

  [["aa4"; "aba"; "aai"; "aa5"; "aah"]; ["aar"; "aau"; "abt"; "abs"; "ab4"];

   ["aaz"; "abt"; "aam"; "aar"; "abs"]; ["ab6"; "abb"; "abi"; "aau"; "aa5"];

   ["abg"; "aai"; "aam"; "aav"; "aau"]; ["abh"; "aax"; "aan"; "aaw"; "ab4"];

   ["abo"; "aaa"; "aby"; "aau"; "aae"]; ["abo"; "aah"; "aab"; "abe"; "aag"];

   ["abs"; "aby"; "abo"; "abv"; "aao"]; ["abx"; "aat"; "aby"; "ab7"; "abe"]]

```

+  _0_ / _0.25_ : Fail: 
        Check that the result of evaluating
        ```
         (Tables.table_of_stringlist "," ["aav,aa3,abv,abc";"aaz,ab3,abn,aan";"aap,abj,ab3,abi";"aba,aa7,aat,abs";"aam,aah,ab3,abi";"aa4,aao,aar,aa7";"abm,aas,aat,abx";"abh,aas,ab4,abn"])
        ```
        Matches the result of evaluating
        ```
        [["aav"; "aa3"; "abv"; "abc"]; ["aaz"; "ab3"; "abn"; "aan"]; ["aap"; "abj"; "ab3"; "abi"]; ["aba"; "aa7"; "aat"; "abs"]; ["aam"; "aah"; "ab3"; "abi"]; ["aa4"; "aao"; "aar"; "aa7"]; ["abm"; "aas"; "aat"; "abx"]; ["abh"; "aas"; "ab4"; "abn"]]
        ```
        

FAILED with output:

```    val expected : string list list =

  [["aav"; "aa3"; "abv"; "abc"]; ["aaz"; "ab3"; "abn"; "aan"];

   ["aap"; "abj"; "ab3"; "abi"]; ["aba"; "aa7"; "aat"; "abs"];

   ["aam"; "aah"; "ab3"; "abi"]; ["aa4"; "aao"; "aar"; "aa7"];

   ["abm"; "aas"; "aat"; "abx"]; ["abh"; "aas"; "ab4"; "abn"]]

 val result : string list list =

  [["aa4"; "aao"; "aar"; "aa7"]; ["aam"; "aah"; "ab3"; "abi"];

   ["aap"; "abj"; "ab3"; "abi"]; ["aav"; "aa3"; "abv"; "abc"];

   ["aaz"; "ab3"; "abn"; "aan"]; ["aba"; "aa7"; "aat"; "abs"];

   ["abh"; "aas"; "ab4"; "abn"]; ["abm"; "aas"; "aat"; "abx"]]

```

+  _0_ / _0.25_ : Fail: 
        Check that the result of evaluating
        ```
         (Tables.table_of_stringlist "|" ["aav|aa3|abv|abc";"aaz|ab3|abn|aan";"aap|abj|ab3|abi";"aba|aa7|aat|abs";"aam|aah|ab3|abi";"aa4|aao|aar|aa7";"abm|aas|aat|abx";"abh|aas|ab4|abn"])
        ```
        Matches the result of evaluating
        ```
        [["aav"; "aa3"; "abv"; "abc"]; ["aaz"; "ab3"; "abn"; "aan"]; ["aap"; "abj"; "ab3"; "abi"]; ["aba"; "aa7"; "aat"; "abs"]; ["aam"; "aah"; "ab3"; "abi"]; ["aa4"; "aao"; "aar"; "aa7"]; ["abm"; "aas"; "aat"; "abx"]; ["abh"; "aas"; "ab4"; "abn"]]
        ```
        

FAILED with output:

```    val expected : string list list =

  [["aav"; "aa3"; "abv"; "abc"]; ["aaz"; "ab3"; "abn"; "aan"];

   ["aap"; "abj"; "ab3"; "abi"]; ["aba"; "aa7"; "aat"; "abs"];

   ["aam"; "aah"; "ab3"; "abi"]; ["aa4"; "aao"; "aar"; "aa7"];

   ["abm"; "aas"; "aat"; "abx"]; ["abh"; "aas"; "ab4"; "abn"]]

 val result : string list list =

  [["aa4"; "aao"; "aar"; "aa7"]; ["aam"; "aah"; "ab3"; "abi"];

   ["aap"; "abj"; "ab3"; "abi"]; ["aav"; "aa3"; "abv"; "abc"];

   ["aaz"; "ab3"; "abn"; "aan"]; ["aba"; "aa7"; "aat"; "abs"];

   ["abh"; "aas"; "ab4"; "abn"]; ["abm"; "aas"; "aat"; "abx"]]

```

+  _0_ / _0.25_ : Fail: 
        Check that the result of evaluating
        ```
         (Tables.table_of_stringlist "," ["aai,abz,abn";"aaz,aan,aaf";"abt,abn,abn";"aa5,abz,aau";"abo,aad,abv";"abp,aag,aah";"aat,aar,aap";"abf,abz,aay";"abz,abk,abp";"aan,aa4,aab";"aad,aas,aao";"ab3,abx,aau"])
        ```
        Matches the result of evaluating
        ```
        [["aai"; "abz"; "abn"]; ["aaz"; "aan"; "aaf"]; ["abt"; "abn"; "abn"]; ["aa5"; "abz"; "aau"]; ["abo"; "aad"; "abv"]; ["abp"; "aag"; "aah"]; ["aat"; "aar"; "aap"]; ["abf"; "abz"; "aay"]; ["abz"; "abk"; "abp"]; ["aan"; "aa4"; "aab"]; ["aad"; "aas"; "aao"]; ["ab3"; "abx"; "aau"]]
        ```
        

FAILED with output:

```    val expected : string list list =

  [["aai"; "abz"; "abn"]; ["aaz"; "aan"; "aaf"]; ["abt"; "abn"; "abn"];

   ["aa5"; "abz"; "aau"]; ["abo"; "aad"; "abv"]; ["abp"; "aag"; "aah"];

   ["aat"; "aar"; "aap"]; ["abf"; "abz"; "aay"]; ["abz"; "abk"; "abp"];

   ["aan"; "aa4"; "aab"]; ["aad"; "aas"; "aao"]; ["ab3"; "abx"; "aau"]]

 val result : string list list =

  [["aa5"; "abz"; "aau"]; ["aad"; "aas"; "aao"]; ["aai"; "abz"; "abn"];

   ["aan"; "aa4"; "aab"]; ["aat"; "aar"; "aap"]; ["aaz"; "aan"; "aaf"];

   ["ab3"; "abx"; "aau"]; ["abf"; "abz"; "aay"]; ["abo"; "aad"; "abv"];

   ["abp"; "aag"; "aah"]; ["abt"; "abn"; "abn"]; ["abz"; "abk"; "abp"]]

```

+  _0_ / _0.25_ : Fail: 
        Check that the result of evaluating
        ```
         (Tables.table_of_stringlist "|" ["aai|abz|abn";"aaz|aan|aaf";"abt|abn|abn";"aa5|abz|aau";"abo|aad|abv";"abp|aag|aah";"aat|aar|aap";"abf|abz|aay";"abz|abk|abp";"aan|aa4|aab";"aad|aas|aao";"ab3|abx|aau"])
        ```
        Matches the result of evaluating
        ```
        [["aai"; "abz"; "abn"]; ["aaz"; "aan"; "aaf"]; ["abt"; "abn"; "abn"]; ["aa5"; "abz"; "aau"]; ["abo"; "aad"; "abv"]; ["abp"; "aag"; "aah"]; ["aat"; "aar"; "aap"]; ["abf"; "abz"; "aay"]; ["abz"; "abk"; "abp"]; ["aan"; "aa4"; "aab"]; ["aad"; "aas"; "aao"]; ["ab3"; "abx"; "aau"]]
        ```
        

FAILED with output:

```    val expected : string list list =

  [["aai"; "abz"; "abn"]; ["aaz"; "aan"; "aaf"]; ["abt"; "abn"; "abn"];

   ["aa5"; "abz"; "aau"]; ["abo"; "aad"; "abv"]; ["abp"; "aag"; "aah"];

   ["aat"; "aar"; "aap"]; ["abf"; "abz"; "aay"]; ["abz"; "abk"; "abp"];

   ["aan"; "aa4"; "aab"]; ["aad"; "aas"; "aao"]; ["ab3"; "abx"; "aau"]]

 val result : string list list =

  [["aa5"; "abz"; "aau"]; ["aad"; "aas"; "aao"]; ["aai"; "abz"; "abn"];

   ["aan"; "aa4"; "aab"]; ["aat"; "aar"; "aap"]; ["aaz"; "aan"; "aaf"];

   ["ab3"; "abx"; "aau"]; ["abf"; "abz"; "aay"]; ["abo"; "aad"; "abv"];

   ["abp"; "aag"; "aah"]; ["abt"; "abn"; "abn"]; ["abz"; "abk"; "abp"]]

```

+  _0_ / _0.25_ : Fail: 
        Check that the result of evaluating
        ```
         (Tables.table_of_stringlist "," ["abk,abc,abb";"abt,aaq,aaw";"ab7,aa5,aay";"abh,aae,abk";"aab,aay,abd";"aah,aa4,aaa";"abe,aa6,ab7";"aaj,ab3,abq"])
        ```
        Matches the result of evaluating
        ```
        [["abk"; "abc"; "abb"]; ["abt"; "aaq"; "aaw"]; ["ab7"; "aa5"; "aay"]; ["abh"; "aae"; "abk"]; ["aab"; "aay"; "abd"]; ["aah"; "aa4"; "aaa"]; ["abe"; "aa6"; "ab7"]; ["aaj"; "ab3"; "abq"]]
        ```
        

FAILED with output:

```    val expected : string list list =

  [["abk"; "abc"; "abb"]; ["abt"; "aaq"; "aaw"]; ["ab7"; "aa5"; "aay"];

   ["abh"; "aae"; "abk"]; ["aab"; "aay"; "abd"]; ["aah"; "aa4"; "aaa"];

   ["abe"; "aa6"; "ab7"]; ["aaj"; "ab3"; "abq"]]

 val result : string list list =

  [["aab"; "aay"; "abd"]; ["aah"; "aa4"; "aaa"]; ["aaj"; "ab3"; "abq"];

   ["ab7"; "aa5"; "aay"]; ["abe"; "aa6"; "ab7"]; ["abh"; "aae"; "abk"];

   ["abk"; "abc"; "abb"]; ["abt"; "aaq"; "aaw"]]

```

+  _0_ / _0.25_ : Fail: 
        Check that the result of evaluating
        ```
         (Tables.table_of_stringlist "|" ["abk|abc|abb";"abt|aaq|aaw";"ab7|aa5|aay";"abh|aae|abk";"aab|aay|abd";"aah|aa4|aaa";"abe|aa6|ab7";"aaj|ab3|abq"])
        ```
        Matches the result of evaluating
        ```
        [["abk"; "abc"; "abb"]; ["abt"; "aaq"; "aaw"]; ["ab7"; "aa5"; "aay"]; ["abh"; "aae"; "abk"]; ["aab"; "aay"; "abd"]; ["aah"; "aa4"; "aaa"]; ["abe"; "aa6"; "ab7"]; ["aaj"; "ab3"; "abq"]]
        ```
        

FAILED with output:

```    val expected : string list list =

  [["abk"; "abc"; "abb"]; ["abt"; "aaq"; "aaw"]; ["ab7"; "aa5"; "aay"];

   ["abh"; "aae"; "abk"]; ["aab"; "aay"; "abd"]; ["aah"; "aa4"; "aaa"];

   ["abe"; "aa6"; "ab7"]; ["aaj"; "ab3"; "abq"]]

 val result : string list list =

  [["aab"; "aay"; "abd"]; ["aah"; "aa4"; "aaa"]; ["aaj"; "ab3"; "abq"];

   ["ab7"; "aa5"; "aay"]; ["abe"; "aa6"; "ab7"]; ["abh"; "aae"; "abk"];

   ["abk"; "abc"; "abb"]; ["abt"; "aaq"; "aaw"]]

```

+  _0_ / _0.25_ : Fail: 
        Check that the result of evaluating
        ```
         (Tables.table_of_stringlist "," ["abc,aar,abi,abh,abq,abb";"aag,aa6,ab4,aab,abr,aao";"aa7,abw,abg,abn,aak,abz";"ab3,aaj,aae,aai,aav,abz";"abk,abx,aas,abj,aak,abp";"aaq,abk,aay,abv,abg,abv";"ab3,aad,aaw,aay,aa2,abp";"aak,aa4,abb,aa7,aar,aal";"ab3,aba,abl,abw,aag,aab";"aaa,aa6,abp,aaj,abz,abi";"ab6,abb,aak,aan,abn,abu";"abv,abo,ab3,abd,aag,abl"])
        ```
        Matches the result of evaluating
        ```
        [["abc"; "aar"; "abi"; "abh"; "abq"; "abb"]; ["aag"; "aa6"; "ab4"; "aab"; "abr"; "aao"]; ["aa7"; "abw"; "abg"; "abn"; "aak"; "abz"]; ["ab3"; "aaj"; "aae"; "aai"; "aav"; "abz"]; ["abk"; "abx"; "aas"; "abj"; "aak"; "abp"]; ["aaq"; "abk"; "aay"; "abv"; "abg"; "abv"]; ["ab3"; "aad"; "aaw"; "aay"; "aa2"; "abp"]; ["aak"; "aa4"; "abb"; "aa7"; "aar"; "aal"]; ["ab3"; "aba"; "abl"; "abw"; "aag"; "aab"]; ["aaa"; "aa6"; "abp"; "aaj"; "abz"; "abi"]; ["ab6"; "abb"; "aak"; "aan"; "abn"; "abu"]; ["abv"; "abo"; "ab3"; "abd"; "aag"; "abl"]]
        ```
        

FAILED with output:

```      val expected : string list list =

  [["abc"; "aar"; "abi"; "abh"; "abq"; "abb"];

   ["aag"; "aa6"; "ab4"; "aab"; "abr"; "aao"];

   ["aa7"; "abw"; "abg"; "abn"; "aak"; "abz"];

   ["ab3"; "aaj"; "aae"; "aai"; "aav"; "abz"];

   ["abk"; "abx"; "aas"; "abj"; "aak"; "abp"];

   ["aaq"; "abk"; "aay"; "abv"; "abg"; "abv"];

   ["ab3"; "aad"; "aaw"; "aay"; "aa2"; "abp"];

   ["aak"; "aa4"; "abb"; "aa7"; "aar"; "aal"];

   ["ab3"; "aba"; "abl"; "abw"; "aag"; "aab"];

   ["aaa"; "aa6"; "abp"; "aaj"; "abz"; "abi"];

   ["ab6"; "abb"; "aak"; "aan"; "abn"; "abu"];

   ["abv"; "abo"; "ab3"; "abd"; "aag"; "abl"]]

 val result : string list list =

  [["aa7"; "abw"; "abg"; "abn"; "aak"; "abz"];

   ["aaa"; "aa6"; "abp"; "aaj"; "abz"; "abi"];

   ["aag"; "aa6"; "ab4"; "aab"; "abr"; "aao"];

   ["aak"; "aa4"; "abb"; "aa7"; "aar"; "aal"];

   ["aaq"; "abk"; "aay"; "abv"; "abg"; "abv"];

   ["ab3"; "aad"; "aaw"; "aay"; "aa2"; "abp"];

   ["ab3"; "aaj"; "aae"; "aai"; "aav"; "abz"];

   ["ab3"; "aba"; "abl"; "abw"; "aag"; "aab"];

   ["ab6"; "abb"; "aak"; "aan"; "abn"; "abu"];

   ["abc"; "aar"; "abi"; "abh"; "abq"; "abb"];

   ["abk"; "abx"; "aas"; "abj"; "aak"; "abp"];

   ["abv"; "abo"; "ab3"; "abd"; "aag"; "abl"]]

```

+  _0_ / _0.25_ : Fail: 
        Check that the result of evaluating
        ```
         (Tables.table_of_stringlist "|" ["abc|aar|abi|abh|abq|abb";"aag|aa6|ab4|aab|abr|aao";"aa7|abw|abg|abn|aak|abz";"ab3|aaj|aae|aai|aav|abz";"abk|abx|aas|abj|aak|abp";"aaq|abk|aay|abv|abg|abv";"ab3|aad|aaw|aay|aa2|abp";"aak|aa4|abb|aa7|aar|aal";"ab3|aba|abl|abw|aag|aab";"aaa|aa6|abp|aaj|abz|abi";"ab6|abb|aak|aan|abn|abu";"abv|abo|ab3|abd|aag|abl"])
        ```
        Matches the result of evaluating
        ```
        [["abc"; "aar"; "abi"; "abh"; "abq"; "abb"]; ["aag"; "aa6"; "ab4"; "aab"; "abr"; "aao"]; ["aa7"; "abw"; "abg"; "abn"; "aak"; "abz"]; ["ab3"; "aaj"; "aae"; "aai"; "aav"; "abz"]; ["abk"; "abx"; "aas"; "abj"; "aak"; "abp"]; ["aaq"; "abk"; "aay"; "abv"; "abg"; "abv"]; ["ab3"; "aad"; "aaw"; "aay"; "aa2"; "abp"]; ["aak"; "aa4"; "abb"; "aa7"; "aar"; "aal"]; ["ab3"; "aba"; "abl"; "abw"; "aag"; "aab"]; ["aaa"; "aa6"; "abp"; "aaj"; "abz"; "abi"]; ["ab6"; "abb"; "aak"; "aan"; "abn"; "abu"]; ["abv"; "abo"; "ab3"; "abd"; "aag"; "abl"]]
        ```
        

FAILED with output:

```      val expected : string list list =

  [["abc"; "aar"; "abi"; "abh"; "abq"; "abb"];

   ["aag"; "aa6"; "ab4"; "aab"; "abr"; "aao"];

   ["aa7"; "abw"; "abg"; "abn"; "aak"; "abz"];

   ["ab3"; "aaj"; "aae"; "aai"; "aav"; "abz"];

   ["abk"; "abx"; "aas"; "abj"; "aak"; "abp"];

   ["aaq"; "abk"; "aay"; "abv"; "abg"; "abv"];

   ["ab3"; "aad"; "aaw"; "aay"; "aa2"; "abp"];

   ["aak"; "aa4"; "abb"; "aa7"; "aar"; "aal"];

   ["ab3"; "aba"; "abl"; "abw"; "aag"; "aab"];

   ["aaa"; "aa6"; "abp"; "aaj"; "abz"; "abi"];

   ["ab6"; "abb"; "aak"; "aan"; "abn"; "abu"];

   ["abv"; "abo"; "ab3"; "abd"; "aag"; "abl"]]

 val result : string list list =

  [["aa7"; "abw"; "abg"; "abn"; "aak"; "abz"];

   ["aaa"; "aa6"; "abp"; "aaj"; "abz"; "abi"];

   ["aag"; "aa6"; "ab4"; "aab"; "abr"; "aao"];

   ["aak"; "aa4"; "abb"; "aa7"; "aar"; "aal"];

   ["aaq"; "abk"; "aay"; "abv"; "abg"; "abv"];

   ["ab3"; "aad"; "aaw"; "aay"; "aa2"; "abp"];

   ["ab3"; "aaj"; "aae"; "aai"; "aav"; "abz"];

   ["ab3"; "aba"; "abl"; "abw"; "aag"; "aab"];

   ["ab6"; "abb"; "aak"; "aan"; "abn"; "abu"];

   ["abc"; "aar"; "abi"; "abh"; "abq"; "abb"];

   ["abk"; "abx"; "aas"; "abj"; "aak"; "abp"];

   ["abv"; "abo"; "ab3"; "abd"; "aag"; "abl"]]

```

+  _0_ / _0.25_ : Fail: 
        Check that the result of evaluating
        ```
         (Tables.table_of_stringlist "," ["abl,aao,aag,aa2,aa7,abg,abx";"abb,aac,abj,abw,aaz,aa7,aav";"ab3,aaj,abh,aa3,abc,aa5,aab";"aa2,aas,abf,abb,ab7,ab3,abr";"aao,abq,aao,aa5,aar,abe,aby";"ab6,abg,abn,aae,aaj,aau,abz";"aak,aae,aaw,abz,abg,abh,aax";"ab5,abs,abc,abr,aa4,abd,aaj";"abt,abf,aan,aak,aam,aaf,aaw";"abh,aaz,abq,aby,abq,aao,abv"])
        ```
        Matches the result of evaluating
        ```
        [["abl"; "aao"; "aag"; "aa2"; "aa7"; "abg"; "abx"]; ["abb"; "aac"; "abj"; "abw"; "aaz"; "aa7"; "aav"]; ["ab3"; "aaj"; "abh"; "aa3"; "abc"; "aa5"; "aab"]; ["aa2"; "aas"; "abf"; "abb"; "ab7"; "ab3"; "abr"]; ["aao"; "abq"; "aao"; "aa5"; "aar"; "abe"; "aby"]; ["ab6"; "abg"; "abn"; "aae"; "aaj"; "aau"; "abz"]; ["aak"; "aae"; "aaw"; "abz"; "abg"; "abh"; "aax"]; ["ab5"; "abs"; "abc"; "abr"; "aa4"; "abd"; "aaj"]; ["abt"; "abf"; "aan"; "aak"; "aam"; "aaf"; "aaw"]; ["abh"; "aaz"; "abq"; "aby"; "abq"; "aao"; "abv"]]
        ```
        

FAILED with output:

```      val expected : string list list =

  [["abl"; "aao"; "aag"; "aa2"; "aa7"; "abg"; "abx"];

   ["abb"; "aac"; "abj"; "abw"; "aaz"; "aa7"; "aav"];

   ["ab3"; "aaj"; "abh"; "aa3"; "abc"; "aa5"; "aab"];

   ["aa2"; "aas"; "abf"; "abb"; "ab7"; "ab3"; "abr"];

   ["aao"; "abq"; "aao"; "aa5"; "aar"; "abe"; "aby"];

   ["ab6"; "abg"; "abn"; "aae"; "aaj"; "aau"; "abz"];

   ["aak"; "aae"; "aaw"; "abz"; "abg"; "abh"; "aax"];

   ["ab5"; "abs"; "abc"; "abr"; "aa4"; "abd"; "aaj"];

   ["abt"; "abf"; "aan"; "aak"; "aam"; "aaf"; "aaw"];

   ["abh"; "aaz"; "abq"; "aby"; "abq"; "aao"; "abv"]]

 val result : string list list =

  [["aa2"; "aas"; "abf"; "abb"; "ab7"; "ab3"; "abr"];

   ["aak"; "aae"; "aaw"; "abz"; "abg"; "abh"; "aax"];

   ["aao"; "abq"; "aao"; "aa5"; "aar"; "abe"; "aby"];

   ["ab3"; "aaj"; "abh"; "aa3"; "abc"; "aa5"; "aab"];

   ["ab5"; "abs"; "abc"; "abr"; "aa4"; "abd"; "aaj"];

   ["ab6"; "abg"; "abn"; "aae"; "aaj"; "aau"; "abz"];

   ["abb"; "aac"; "abj"; "abw"; "aaz"; "aa7"; "aav"];

   ["abh"; "aaz"; "abq"; "aby"; "abq"; "aao"; "abv"];

   ["abl"; "aao"; "aag"; "aa2"; "aa7"; "abg"; "abx"];

   ["abt"; "abf"; "aan"; "aak"; "aam"; "aaf"; "aaw"]]

```

+  _0_ / _0.25_ : Fail: 
        Check that the result of evaluating
        ```
         (Tables.table_of_stringlist "|" ["abl|aao|aag|aa2|aa7|abg|abx";"abb|aac|abj|abw|aaz|aa7|aav";"ab3|aaj|abh|aa3|abc|aa5|aab";"aa2|aas|abf|abb|ab7|ab3|abr";"aao|abq|aao|aa5|aar|abe|aby";"ab6|abg|abn|aae|aaj|aau|abz";"aak|aae|aaw|abz|abg|abh|aax";"ab5|abs|abc|abr|aa4|abd|aaj";"abt|abf|aan|aak|aam|aaf|aaw";"abh|aaz|abq|aby|abq|aao|abv"])
        ```
        Matches the result of evaluating
        ```
        [["abl"; "aao"; "aag"; "aa2"; "aa7"; "abg"; "abx"]; ["abb"; "aac"; "abj"; "abw"; "aaz"; "aa7"; "aav"]; ["ab3"; "aaj"; "abh"; "aa3"; "abc"; "aa5"; "aab"]; ["aa2"; "aas"; "abf"; "abb"; "ab7"; "ab3"; "abr"]; ["aao"; "abq"; "aao"; "aa5"; "aar"; "abe"; "aby"]; ["ab6"; "abg"; "abn"; "aae"; "aaj"; "aau"; "abz"]; ["aak"; "aae"; "aaw"; "abz"; "abg"; "abh"; "aax"]; ["ab5"; "abs"; "abc"; "abr"; "aa4"; "abd"; "aaj"]; ["abt"; "abf"; "aan"; "aak"; "aam"; "aaf"; "aaw"]; ["abh"; "aaz"; "abq"; "aby"; "abq"; "aao"; "abv"]]
        ```
        

FAILED with output:

```      val expected : string list list =

  [["abl"; "aao"; "aag"; "aa2"; "aa7"; "abg"; "abx"];

   ["abb"; "aac"; "abj"; "abw"; "aaz"; "aa7"; "aav"];

   ["ab3"; "aaj"; "abh"; "aa3"; "abc"; "aa5"; "aab"];

   ["aa2"; "aas"; "abf"; "abb"; "ab7"; "ab3"; "abr"];

   ["aao"; "abq"; "aao"; "aa5"; "aar"; "abe"; "aby"];

   ["ab6"; "abg"; "abn"; "aae"; "aaj"; "aau"; "abz"];

   ["aak"; "aae"; "aaw"; "abz"; "abg"; "abh"; "aax"];

   ["ab5"; "abs"; "abc"; "abr"; "aa4"; "abd"; "aaj"];

   ["abt"; "abf"; "aan"; "aak"; "aam"; "aaf"; "aaw"];

   ["abh"; "aaz"; "abq"; "aby"; "abq"; "aao"; "abv"]]

 val result : string list list =

  [["aa2"; "aas"; "abf"; "abb"; "ab7"; "ab3"; "abr"];

   ["aak"; "aae"; "aaw"; "abz"; "abg"; "abh"; "aax"];

   ["aao"; "abq"; "aao"; "aa5"; "aar"; "abe"; "aby"];

   ["ab3"; "aaj"; "abh"; "aa3"; "abc"; "aa5"; "aab"];

   ["ab5"; "abs"; "abc"; "abr"; "aa4"; "abd"; "aaj"];

   ["ab6"; "abg"; "abn"; "aae"; "aaj"; "aau"; "abz"];

   ["abb"; "aac"; "abj"; "abw"; "aaz"; "aa7"; "aav"];

   ["abh"; "aaz"; "abq"; "aby"; "abq"; "aao"; "abv"];

   ["abl"; "aao"; "aag"; "aa2"; "aa7"; "abg"; "abx"];

   ["abt"; "abf"; "aan"; "aak"; "aam"; "aaf"; "aaw"]]

```

+  _0_ / _0.25_ : Fail: 
        Check that the result of evaluating
        ```
         (Tables.table_of_stringlist "," ["abf,aar,abn,abc";"ab7,aa4,aao,ab2";"aak,aal,abc,ab3";"abw,aax,abb,aaz";"aa4,abv,abf,aaa";"ab6,aaz,aad,abp";"abj,abc,abl,aal";"aa5,aas,abd,aaa";"abv,aad,abd,aa7";"aby,aae,aak,ab7";"aaq,aak,aan,aa7";"aa2,ab4,aae,abo"])
        ```
        Matches the result of evaluating
        ```
        [["abf"; "aar"; "abn"; "abc"]; ["ab7"; "aa4"; "aao"; "ab2"]; ["aak"; "aal"; "abc"; "ab3"]; ["abw"; "aax"; "abb"; "aaz"]; ["aa4"; "abv"; "abf"; "aaa"]; ["ab6"; "aaz"; "aad"; "abp"]; ["abj"; "abc"; "abl"; "aal"]; ["aa5"; "aas"; "abd"; "aaa"]; ["abv"; "aad"; "abd"; "aa7"]; ["aby"; "aae"; "aak"; "ab7"]; ["aaq"; "aak"; "aan"; "aa7"]; ["aa2"; "ab4"; "aae"; "abo"]]
        ```
        

FAILED with output:

```    val expected : string list list =

  [["abf"; "aar"; "abn"; "abc"]; ["ab7"; "aa4"; "aao"; "ab2"];

   ["aak"; "aal"; "abc"; "ab3"]; ["abw"; "aax"; "abb"; "aaz"];

   ["aa4"; "abv"; "abf"; "aaa"]; ["ab6"; "aaz"; "aad"; "abp"];

   ["abj"; "abc"; "abl"; "aal"]; ["aa5"; "aas"; "abd"; "aaa"];

   ["abv"; "aad"; "abd"; "aa7"]; ["aby"; "aae"; "aak"; "ab7"];

   ["aaq"; "aak"; "aan"; "aa7"]; ["aa2"; "ab4"; "aae"; "abo"]]

 val result : string list list =

  [["aa2"; "ab4"; "aae"; "abo"]; ["aa4"; "abv"; "abf"; "aaa"];

   ["aa5"; "aas"; "abd"; "aaa"]; ["aak"; "aal"; "abc"; "ab3"];

   ["aaq"; "aak"; "aan"; "aa7"]; ["ab6"; "aaz"; "aad"; "abp"];

   ["ab7"; "aa4"; "aao"; "ab2"]; ["abf"; "aar"; "abn"; "abc"];

   ["abj"; "abc"; "abl"; "aal"]; ["abv"; "aad"; "abd"; "aa7"];

   ["abw"; "aax"; "abb"; "aaz"]; ["aby"; "aae"; "aak"; "ab7"]]

```

+  _0_ / _0.25_ : Fail: 
        Check that the result of evaluating
        ```
         (Tables.table_of_stringlist "|" ["abf|aar|abn|abc";"ab7|aa4|aao|ab2";"aak|aal|abc|ab3";"abw|aax|abb|aaz";"aa4|abv|abf|aaa";"ab6|aaz|aad|abp";"abj|abc|abl|aal";"aa5|aas|abd|aaa";"abv|aad|abd|aa7";"aby|aae|aak|ab7";"aaq|aak|aan|aa7";"aa2|ab4|aae|abo"])
        ```
        Matches the result of evaluating
        ```
        [["abf"; "aar"; "abn"; "abc"]; ["ab7"; "aa4"; "aao"; "ab2"]; ["aak"; "aal"; "abc"; "ab3"]; ["abw"; "aax"; "abb"; "aaz"]; ["aa4"; "abv"; "abf"; "aaa"]; ["ab6"; "aaz"; "aad"; "abp"]; ["abj"; "abc"; "abl"; "aal"]; ["aa5"; "aas"; "abd"; "aaa"]; ["abv"; "aad"; "abd"; "aa7"]; ["aby"; "aae"; "aak"; "ab7"]; ["aaq"; "aak"; "aan"; "aa7"]; ["aa2"; "ab4"; "aae"; "abo"]]
        ```
        

FAILED with output:

```    val expected : string list list =

  [["abf"; "aar"; "abn"; "abc"]; ["ab7"; "aa4"; "aao"; "ab2"];

   ["aak"; "aal"; "abc"; "ab3"]; ["abw"; "aax"; "abb"; "aaz"];

   ["aa4"; "abv"; "abf"; "aaa"]; ["ab6"; "aaz"; "aad"; "abp"];

   ["abj"; "abc"; "abl"; "aal"]; ["aa5"; "aas"; "abd"; "aaa"];

   ["abv"; "aad"; "abd"; "aa7"]; ["aby"; "aae"; "aak"; "ab7"];

   ["aaq"; "aak"; "aan"; "aa7"]; ["aa2"; "ab4"; "aae"; "abo"]]

 val result : string list list =

  [["aa2"; "ab4"; "aae"; "abo"]; ["aa4"; "abv"; "abf"; "aaa"];

   ["aa5"; "aas"; "abd"; "aaa"]; ["aak"; "aal"; "abc"; "ab3"];

   ["aaq"; "aak"; "aan"; "aa7"]; ["ab6"; "aaz"; "aad"; "abp"];

   ["ab7"; "aa4"; "aao"; "ab2"]; ["abf"; "aar"; "abn"; "abc"];

   ["abj"; "abc"; "abl"; "aal"]; ["abv"; "aad"; "abd"; "aa7"];

   ["abw"; "aax"; "abb"; "aaz"]; ["aby"; "aae"; "aak"; "ab7"]]

```

+  _0_ / _0.25_ : Fail: 
        Check that the result of evaluating
        ```
         (Tables.table_of_stringlist "," ["aba,abm,abz,aai,abx,aax,aap";"aaj,aaa,aaf,aas,abl,abl,aa3";"aaa,aaf,aa4,aax,aas,abd,aaj";"aau,abx,aar,abt,aao,ab7,abv";"ab4,abt,abz,abz,abj,aam,abz";"abf,aar,abp,abj,abp,abn,abw";"ab6,aag,abi,aam,abo,aav,aak";"abr,abg,aaw,aah,abq,abv,aab";"abq,aaa,aba,abl,abb,aay,aag";"abh,abu,aaz,ab6,abi,aau,aal"])
        ```
        Matches the result of evaluating
        ```
        [["aba"; "abm"; "abz"; "aai"; "abx"; "aax"; "aap"]; ["aaj"; "aaa"; "aaf"; "aas"; "abl"; "abl"; "aa3"]; ["aaa"; "aaf"; "aa4"; "aax"; "aas"; "abd"; "aaj"]; ["aau"; "abx"; "aar"; "abt"; "aao"; "ab7"; "abv"]; ["ab4"; "abt"; "abz"; "abz"; "abj"; "aam"; "abz"]; ["abf"; "aar"; "abp"; "abj"; "abp"; "abn"; "abw"]; ["ab6"; "aag"; "abi"; "aam"; "abo"; "aav"; "aak"]; ["abr"; "abg"; "aaw"; "aah"; "abq"; "abv"; "aab"]; ["abq"; "aaa"; "aba"; "abl"; "abb"; "aay"; "aag"]; ["abh"; "abu"; "aaz"; "ab6"; "abi"; "aau"; "aal"]]
        ```
        

FAILED with output:

```      val expected : string list list =

  [["aba"; "abm"; "abz"; "aai"; "abx"; "aax"; "aap"];

   ["aaj"; "aaa"; "aaf"; "aas"; "abl"; "abl"; "aa3"];

   ["aaa"; "aaf"; "aa4"; "aax"; "aas"; "abd"; "aaj"];

   ["aau"; "abx"; "aar"; "abt"; "aao"; "ab7"; "abv"];

   ["ab4"; "abt"; "abz"; "abz"; "abj"; "aam"; "abz"];

   ["abf"; "aar"; "abp"; "abj"; "abp"; "abn"; "abw"];

   ["ab6"; "aag"; "abi"; "aam"; "abo"; "aav"; "aak"];

   ["abr"; "abg"; "aaw"; "aah"; "abq"; "abv"; "aab"];

   ["abq"; "aaa"; "aba"; "abl"; "abb"; "aay"; "aag"];

   ["abh"; "abu"; "aaz"; "ab6"; "abi"; "aau"; "aal"]]

 val result : string list list =

  [["aaa"; "aaf"; "aa4"; "aax"; "aas"; "abd"; "aaj"];

   ["aaj"; "aaa"; "aaf"; "aas"; "abl"; "abl"; "aa3"];

   ["aau"; "abx"; "aar"; "abt"; "aao"; "ab7"; "abv"];

   ["ab4"; "abt"; "abz"; "abz"; "abj"; "aam"; "abz"];

   ["ab6"; "aag"; "abi"; "aam"; "abo"; "aav"; "aak"];

   ["aba"; "abm"; "abz"; "aai"; "abx"; "aax"; "aap"];

   ["abf"; "aar"; "abp"; "abj"; "abp"; "abn"; "abw"];

   ["abh"; "abu"; "aaz"; "ab6"; "abi"; "aau"; "aal"];

   ["abq"; "aaa"; "aba"; "abl"; "abb"; "aay"; "aag"];

   ["abr"; "abg"; "aaw"; "aah"; "abq"; "abv"; "aab"]]

```

+  _0_ / _0.25_ : Fail: 
        Check that the result of evaluating
        ```
         (Tables.table_of_stringlist "|" ["aba|abm|abz|aai|abx|aax|aap";"aaj|aaa|aaf|aas|abl|abl|aa3";"aaa|aaf|aa4|aax|aas|abd|aaj";"aau|abx|aar|abt|aao|ab7|abv";"ab4|abt|abz|abz|abj|aam|abz";"abf|aar|abp|abj|abp|abn|abw";"ab6|aag|abi|aam|abo|aav|aak";"abr|abg|aaw|aah|abq|abv|aab";"abq|aaa|aba|abl|abb|aay|aag";"abh|abu|aaz|ab6|abi|aau|aal"])
        ```
        Matches the result of evaluating
        ```
        [["aba"; "abm"; "abz"; "aai"; "abx"; "aax"; "aap"]; ["aaj"; "aaa"; "aaf"; "aas"; "abl"; "abl"; "aa3"]; ["aaa"; "aaf"; "aa4"; "aax"; "aas"; "abd"; "aaj"]; ["aau"; "abx"; "aar"; "abt"; "aao"; "ab7"; "abv"]; ["ab4"; "abt"; "abz"; "abz"; "abj"; "aam"; "abz"]; ["abf"; "aar"; "abp"; "abj"; "abp"; "abn"; "abw"]; ["ab6"; "aag"; "abi"; "aam"; "abo"; "aav"; "aak"]; ["abr"; "abg"; "aaw"; "aah"; "abq"; "abv"; "aab"]; ["abq"; "aaa"; "aba"; "abl"; "abb"; "aay"; "aag"]; ["abh"; "abu"; "aaz"; "ab6"; "abi"; "aau"; "aal"]]
        ```
        

FAILED with output:

```      val expected : string list list =

  [["aba"; "abm"; "abz"; "aai"; "abx"; "aax"; "aap"];

   ["aaj"; "aaa"; "aaf"; "aas"; "abl"; "abl"; "aa3"];

   ["aaa"; "aaf"; "aa4"; "aax"; "aas"; "abd"; "aaj"];

   ["aau"; "abx"; "aar"; "abt"; "aao"; "ab7"; "abv"];

   ["ab4"; "abt"; "abz"; "abz"; "abj"; "aam"; "abz"];

   ["abf"; "aar"; "abp"; "abj"; "abp"; "abn"; "abw"];

   ["ab6"; "aag"; "abi"; "aam"; "abo"; "aav"; "aak"];

   ["abr"; "abg"; "aaw"; "aah"; "abq"; "abv"; "aab"];

   ["abq"; "aaa"; "aba"; "abl"; "abb"; "aay"; "aag"];

   ["abh"; "abu"; "aaz"; "ab6"; "abi"; "aau"; "aal"]]

 val result : string list list =

  [["aaa"; "aaf"; "aa4"; "aax"; "aas"; "abd"; "aaj"];

   ["aaj"; "aaa"; "aaf"; "aas"; "abl"; "abl"; "aa3"];

   ["aau"; "abx"; "aar"; "abt"; "aao"; "ab7"; "abv"];

   ["ab4"; "abt"; "abz"; "abz"; "abj"; "aam"; "abz"];

   ["ab6"; "aag"; "abi"; "aam"; "abo"; "aav"; "aak"];

   ["aba"; "abm"; "abz"; "aai"; "abx"; "aax"; "aap"];

   ["abf"; "aar"; "abp"; "abj"; "abp"; "abn"; "abw"];

   ["abh"; "abu"; "aaz"; "ab6"; "abi"; "aau"; "aal"];

   ["abq"; "aaa"; "aba"; "abl"; "abb"; "aay"; "aag"];

   ["abr"; "abg"; "aaw"; "aah"; "abq"; "abv"; "aab"]]

```

+  _0_ / _0.25_ : Fail: 
        Check that the result of evaluating
        ```
         (Tables.table_of_stringlist "," ["abt,aac,aar";"aat,abm,ab7";"aat,abx,ab5";"abp,abr,aav";"abw,aaa,aa7";"abl,aac,aa4";"aby,abl,abm";"aau,aak,abm";"aav,aa4,aae";"ab4,aam,abs"])
        ```
        Matches the result of evaluating
        ```
        [["abt"; "aac"; "aar"]; ["aat"; "abm"; "ab7"]; ["aat"; "abx"; "ab5"]; ["abp"; "abr"; "aav"]; ["abw"; "aaa"; "aa7"]; ["abl"; "aac"; "aa4"]; ["aby"; "abl"; "abm"]; ["aau"; "aak"; "abm"]; ["aav"; "aa4"; "aae"]; ["ab4"; "aam"; "abs"]]
        ```
        

FAILED with output:

```    val expected : string list list =

  [["abt"; "aac"; "aar"]; ["aat"; "abm"; "ab7"]; ["aat"; "abx"; "ab5"];

   ["abp"; "abr"; "aav"]; ["abw"; "aaa"; "aa7"]; ["abl"; "aac"; "aa4"];

   ["aby"; "abl"; "abm"]; ["aau"; "aak"; "abm"]; ["aav"; "aa4"; "aae"];

   ["ab4"; "aam"; "abs"]]

 val result : string list list =

  [["aat"; "abm"; "ab7"]; ["aat"; "abx"; "ab5"]; ["aau"; "aak"; "abm"];

   ["aav"; "aa4"; "aae"]; ["ab4"; "aam"; "abs"]; ["abl"; "aac"; "aa4"];

   ["abp"; "abr"; "aav"]; ["abt"; "aac"; "aar"]; ["abw"; "aaa"; "aa7"];

   ["aby"; "abl"; "abm"]]

```

+  _0_ / _0.25_ : Fail: 
        Check that the result of evaluating
        ```
         (Tables.table_of_stringlist "|" ["abt|aac|aar";"aat|abm|ab7";"aat|abx|ab5";"abp|abr|aav";"abw|aaa|aa7";"abl|aac|aa4";"aby|abl|abm";"aau|aak|abm";"aav|aa4|aae";"ab4|aam|abs"])
        ```
        Matches the result of evaluating
        ```
        [["abt"; "aac"; "aar"]; ["aat"; "abm"; "ab7"]; ["aat"; "abx"; "ab5"]; ["abp"; "abr"; "aav"]; ["abw"; "aaa"; "aa7"]; ["abl"; "aac"; "aa4"]; ["aby"; "abl"; "abm"]; ["aau"; "aak"; "abm"]; ["aav"; "aa4"; "aae"]; ["ab4"; "aam"; "abs"]]
        ```
        

FAILED with output:

```    val expected : string list list =

  [["abt"; "aac"; "aar"]; ["aat"; "abm"; "ab7"]; ["aat"; "abx"; "ab5"];

   ["abp"; "abr"; "aav"]; ["abw"; "aaa"; "aa7"]; ["abl"; "aac"; "aa4"];

   ["aby"; "abl"; "abm"]; ["aau"; "aak"; "abm"]; ["aav"; "aa4"; "aae"];

   ["ab4"; "aam"; "abs"]]

 val result : string list list =

  [["aat"; "abm"; "ab7"]; ["aat"; "abx"; "ab5"]; ["aau"; "aak"; "abm"];

   ["aav"; "aa4"; "aae"]; ["ab4"; "aam"; "abs"]; ["abl"; "aac"; "aa4"];

   ["abp"; "abr"; "aav"]; ["abt"; "aac"; "aar"]; ["abw"; "aaa"; "aa7"];

   ["aby"; "abl"; "abm"]]

```

#### Subtotal: _0_ / _5.0_

## Manual tests entered by TA: whit2267

+ Pass: Check that file "tables.ml" exists.

+  _5_ / _7_ : Pass: 
    Useful comments and indentation
    
    
     Score (out of 2): 1
    Appropriate task decomposition into helper functions
    
    
     Score (out of 2): 2
    Uses an appropriate/efficient algorithm
    
    
     Score (out of 2): 1
    Correct tail recursion
    
    
     Score (out of 1): 1


+ Pass: Other Stylistic Comments & Feedback

    No need to use List.sort. Also need comments

#### Subtotal: _5_ / _7_

