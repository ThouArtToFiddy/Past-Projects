## Assessment for Lab 8

Run on March 29, 10:49:16 AM.

+ Pass: Change into directory "lab8".

+  _1_ / _1_ : Pass: Item 1 of list in lazylabval.md passes Normal Form with correct evaluation result test

+  _1_ / _1_ : Pass: Item 2 of list in lazylabval.md passes Never with explanation test

+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   take_s 3 (ustring_s "yo")
   ```
   matches the pattern `[""; "yo"; "yoyo"]`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   take_s 4 (ustring_s "boo")
   ```
   matches the pattern `[""; "boo"; "booboo"; "boobooboo"]`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   lztake 3 (lz_ustring "ho")
   ```
   matches the pattern `["";"ho";"hoho"]`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   take_until_s (ustring_s "a") (fun s -> String.length s = 4)
   ```
   matches the pattern `["";"a";"aa";"aaa"]`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   lz_take_until (lz_ustring "om") (fun s -> s = "omom")
   ```
   matches the pattern `[""; "om"]`.

   




+  _1_ / _1_ : Pass: 
Check that the result of evaluating
   ```
   lz_take_until End (fun s -> false)
   ```
   matches the pattern `[]`.

   




#### Total score: _8_ / _8_

