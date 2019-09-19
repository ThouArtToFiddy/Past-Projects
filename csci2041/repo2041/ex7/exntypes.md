# `exntypes.md` solutions

1. `raise`
Valid :  exn -> 'a = <fun>
raise is a function that takes an exception input and raises it.
2. `exception T of string;; let strange x = raise (T x) in strange`
Valid : string -> 'a = <fun>
takes in a string to raise as a type T exception
3. `Invalid_argument "Not OK?"`
Valid : exn = Invalid_argument "Not OK?"
creates the exception Invalid_argument with "Not OK?"
4. `invalid_arg "OK?"`
Runtime Exception
invalid_arg raises an exception of OK?
5. `try String.sub "most unfortunate" (-1) 3 with | Invalid_argument _ -> (-1) | Failure _ -> (-2)`
Type Error
expects string type, but is given int instead
6. `let rec list_mul = function  | [] -> 1 | 0::_ -> failwith "zero"  | h::t -> h * (list_mul t) in try list_mul [2;0;5] with Failure "zero" -> 0`
Valid : int = 0
evaluates to 0 when it reaches the second index of the array.
7. `let guard_inv x = try (1/x) with  Division_by_zero -> infinity in guard_inv`
Type Error
expects type int but was given infinity which is float
8. `exception F of int;; F 7`
Valid : exn = F 7
creates the exception F which has 7
