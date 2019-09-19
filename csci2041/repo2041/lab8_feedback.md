### Feedback for Lab 8

Run on March 26, 13:19:24 PM.

+ Pass: Change into directory "lab8".

+ Pass: Item 1 of list in lazylabval.md passes Normal Form with correct evaluation result test

+ Pass: Item 2 of list in lazylabval.md passes Never with explanation test

+ Pass: 
Check that the result of evaluating
   ```
   take_s 3 (ustring_s "yo")
   ```
   matches the pattern `[""; "yo"; "yoyo"]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   take_s 4 (ustring_s "boo")
   ```
   matches the pattern `[""; "boo"; "booboo"; "boobooboo"]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   lztake 3 (lz_ustring "ho")
   ```
   matches the pattern `["";"ho";"hoho"]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   take_until_s (ustring_s "a") (fun s -> String.length s = 4)
   ```
   matches the pattern `["";"a";"aa";"aaa"]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   lz_take_until (lz_ustring "om") (fun s -> s = "omom")
   ```
   matches the pattern `[""; "om"]`.

   




+ Pass: 
Check that the result of evaluating
   ```
   lz_take_until End (fun s -> false)
   ```
   matches the pattern `[]`.

   




