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
| Mod of expr * expr
and boolExpr =
| Eq of expr * expr
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
| Mod (e1,e2) -> (eval e1 env) mod (eval e2 env)
and beval bx env = match bx with
| And (l,r) -> (beval l env) && (beval r env)
| Or (l,r) -> (beval l env) || (beval r env)
| Not ex -> not (beval ex env)
| Eq (e1,e2) -> (eval e1 env) = (eval e2 env)
| Gt (e1,e2) -> (eval e1 env) > (eval e2 env)
| Lt (e1,e2) -> (eval e1 env) < (eval e2 env)
| Bool b -> b

let e_collatz = Let ("n", Const 31, Let ("n2", Div (Name "n", Const 2), If (Eq (Mul (Name "n2", Const 2), Name "n"), Name "n2", Add (Mul (Const 3, Name "n"), Const 1))))

let e_ifchain = Let ("x", Sub (Const 42, Const 17), If( And (Gt(Name "x", Const 17), Bool true) ,(If (Or(Lt(Name "x", Const 31), Bool false), Const 1, Const 0)) ,Const (-1)))

let e_uclid = Let ("p1", Add (Mul (Const 2, Const 3), Const 1),Let ("p2", Add (Mul (Const 5, Sub (Name "p1", Const 1)), Const 1), Add (Mul (Const 7, Sub (Name "p2", Const 1)), Const 1)))

let rec subst e_sub nm e_in = Const 1 (* replace every Name nm instance in e_in with e_sub*)
let rec inline e = Const 0 (* Not even close to right*)
