(* Author: Dr. Nick
   Modified by: ... Jerry Wu ... *)

(* A function computing the sum of the non-negative numbers between 0 and n *)
let rec nsum n = if n < 1 then 0 else n + nsum (n - 1)
(* compute 0 + 1 + 2 + ... + 10 *)
let k = nsum (-1)
