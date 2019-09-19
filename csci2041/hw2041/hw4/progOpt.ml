(* progOpt.ml -- optimizations for our little programming language *)

open Program

let is_const = function
 Const _ | BConst _ | LConst _ -> true
 | _ -> false

(* insert (correct) definition of const_fold here *)
let rec const_fold e = match e with
  | (Const _) | (BConst _) | (LConst _ ) | Readint | Name _ -> e
  | Print e -> Print (const_fold e)
  | Apply (e1, e2) -> Apply (const_fold e1, const_fold e2)
  | _ -> e (* it's up to you to finish the rest *)
