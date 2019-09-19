(* OCaml file for lab 1.
   Fix the errors in this file.  *)

let zero = (-2 + 2)

let myfun x = x
let beginning s = s.[zero]
let len var = String.length var

let mult x y = x * y

let or3 x y z = x || y || z

let helloworld = "hello" ^ "world"

let ending s t = let last = len s - 1 in String.sub s (last - t) t

(*let c = beginning ""*)

let () = print_string (ending "Looks like we made it!\n" 9)

let scale x a b = (x * a),(x * b)

let length a b = sqrt (a *. a +. b *. b)

let unit_vector (a,b) = if length a b = 1.0 then true else false
