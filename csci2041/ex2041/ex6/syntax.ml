(* syntax.ml  -- Ex6 Part 1 *)

(* Type for representing program fragments. Note the mutual recursion *)
type expr =
| Mul of expr * expr
| Add of expr * expr
| Const of int
| Sub of expr * expr
| Div of expr * expr
| Let of string * expr * expr
| Name of string
| If of boolExpr * expr * expr
and boolExpr =
  Eq of expr * expr
| Gt of expr * expr
| Lt of expr * expr
| And of boolExpr * boolExpr
| Or of boolExpr * boolExpr
| Not of boolExpr
| Bool of bool

(* Evaluation of exprs and boolExprs.  Note mutual recursion *)
let rec eval e env = match e with
| Mul (e1,e2) -> (eval e1 env) * (eval e2 env)
| Add (e1,e2) -> (eval e1 env) + (eval e2 env)
| Const i -> i
| Sub (e1,e2) -> (eval e1 env) - (eval e2 env)
| Div (e1,e2) -> (eval e1 env) / (eval e2 env)
| Let (nm,e1,e2) -> let v = (eval e1 env) in eval e2 ((nm,v)::env)
| Name n -> List.assoc n env
| If (cnd,thn,els) -> if (beval cnd env) then eval thn env else eval els env
and beval bx env = match bx with
| And (l,r) -> (beval l env) && (beval r env)
| Or (l,r) -> (beval l env) || (beval r env)
| Not ex -> not (beval ex env)
| Eq (e1,e2) -> (eval e1 env) = (eval e2 env)
| Gt (e1,e2) -> (eval e1 env) > (eval e2 env)
| Lt (e1,e2) -> (eval e1 env) < (eval e2 env)
| Bool b -> b

let e_collatz = Const 0 (* not the right value! *)

let e_ifchain = Const 1 (* also not right! *)

let e_uclid = Const 2 (* again... *)

let rec subst e_sub nm e_in = Const 1 (* replace every Name nm instance in e_in with e_sub*)
let rec inline e = Const 0 (* Not even close to right*)
