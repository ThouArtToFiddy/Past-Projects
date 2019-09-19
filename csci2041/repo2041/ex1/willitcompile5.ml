(* willitcompile5.ml - CSci 2041, Fall 2019 (Hopper) *)
(* will it compile? *)

(* Magic, don't touch *)
let thing = if Array.length Sys.argv < 2 then "CSci" else  Sys.argv.(1)
let year = if Array.length Sys.argv < 3 then "2019" else Sys.argv.(2)

let rec make_tag = fun t y ->
  if t = "" then "#Donewithhashtags" else
  if t = "MN" || t = "Minnesota" then (make_tag "Minny" y) ^ "!!!" else
  if (String.length t) = 1 then "#" ^ t ^ y
  else "#" ^ t ^ "in" ^ y

let () = print_endline (make_tag thing year)
