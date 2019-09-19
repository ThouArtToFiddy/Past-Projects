let fixduck lst = List.map (
  fun ele -> if (ele = "goose")
    then "grey duck"
  else if (ele = "duck")
    then ele
  else ele ^ " duck") lst

let hex_list lst = List.map(fun x -> Printf.sprintf "%X" x) lst

let de_parenthesize lst = List.filter (fun x -> if x = '(' || x = ')' then false else true) lst

let p_hack lst = List.filter (fun (f,s) -> if f < 0.05 then true else false) lst
