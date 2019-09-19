(* Recursion, tail recursion, nested functions.  Your definitions of unzip and list_cat go here. *)

let rec unzip ls = match ls with
|[]->([],[])
|(a,b)::t-> match (unzip t) with (c,d) -> (a::c, b::d)



let rec list_cat (ls : string list) : string = match ls with
|[]->""
|h::t->h^(list_cat t)


let rec list_cat2 (ls : string list) en : string = match ls with
|[]->en
|h::t-> list_cat2 ()  
