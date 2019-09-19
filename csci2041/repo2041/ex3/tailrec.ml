(* tailrec.ml - exercise set 2, CSci 2041, Spring 2019 *)
(* Jerry Wu, wu000169*)

(* Fix this: it has bugs and must be tail recursive... *)
(*Tried to fix but am failing so far*)
let rec msort ls =
 []

(* Fill in tail recursive range *)
let rec range m n =
   let rec helper m n ls =
    if m >= n then ls
    else helper m (n-1) (n::ls)
in (helper m n [])


(* *@ operator *)
let ( *@ ) n ls =
  let x =
  let rec helper acc n l =
  if n < 1
    then acc
  else helper (l::acc) (n-1) l
  in (helper [] n ls) in
  List.flatten x
