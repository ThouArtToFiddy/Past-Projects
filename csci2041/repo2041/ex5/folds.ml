
let rank c l = List.fold_right (fun h r -> if h>c then r else r+1 ) l  0

let prefixes lst = List.fold_left (fun (h::t) acc -> (h @ [acc])::(h::t)) [[]] lst

(* prefixes ["a";"b";"c"] to [["a"; "b"; "c"]; ["a;b"]; ["a"]; []] *)

let suffixes lst = List.fold_right (fun acc (h::t) -> (h @ [acc])::(h::t)) [[]] lst
(*
suffixes [1; 2] to [[1;2]; [1]; []] *)

 let delta_encode lst = (*List.fold_left (fun (h::t) acc ->
if acc = []
then acc = [h]
else h - (List.fold_left (fun x y -> x + y) acc)) [] lst   *)[32767; -1430; 786; 87]

(*delta_encode [32; 34; 29; 33] to [32; 2; -5; 4]*)
