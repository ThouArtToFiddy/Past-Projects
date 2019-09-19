# `exntypes.md` solutions

1. `raise`


2. `exception T of string;; let strange x = raise (T x) in strange`


3. `Invalid_argument "Not OK?"`


4. `invalid_arg "OK?"`


5. `try String.sub "most unfortunate" (-1) 3 with | Invalid_argument _ -> (-1) | Failure _ -> (-2)`


6. `let rec list_mul = function  | [] -> 1 | 0::_ -> failwith "zero"  | h::t -> h * (list_mul t) in try list_mul [2;0;5] with Failure "zero" -> 0`


7. `let guard_inv x = try (1/x) with  Division_by_zero -> infinity in guard_inv`


8. `exception F of int;; F 7`
