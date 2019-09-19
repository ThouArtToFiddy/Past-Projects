type expr =
  Const of int | BConst of bool
  | Add of expr * expr
  | Sub of expr * expr
  | Mul of expr * expr
  | Div of expr * expr
  | If of expr * expr * expr
  | Let of string * expr * expr
  | Name of string
  | And of expr * expr
  | Or of expr * expr
  | Not of expr
  | Lt of expr * expr
  | Eq of expr * expr
  | Gt of expr * expr
  | Print of expr

type expType = Int | Bool | Unit

(* Type to represent a lexical environment of the program, e.g. the current stack of variables and the values they are bound to *)
type envType = (string * result) list
 (* Type to represent a value in the program *)
 and result = IntR of int | BoolR of bool | UnitR

(* evaluate an expression in a lexical environment *)
let rec eval exp env = match exp with
  | Const n -> IntR n
  | BConst b -> BoolR b
  | Add (e1,e2) -> evalInt (+) e1 e2 env
  | Mul (e1,e2) -> evalInt ( * ) e1 e2 env
  | Sub (e1,e2) -> evalInt (-) e1 e2 env
  | Div (e1,e2) -> evalInt (/) e1 e2 env
  | If (cond,thn,els) -> evalIf cond thn els env
  | Let (nm,vl,exp') -> evalLet nm vl exp' env
  | Name nm -> List.assoc nm env
  | And (e1,e2) -> evalBool (&&) e1 e2 env
  | Or (e1,e2) -> evalBool (||) e1 e2 env
  | Not e -> let (BoolR b) = eval e env in BoolR (not b)
  | Lt (e1, e2) -> evalComp (<) e1 e2 env
  | Eq (e1, e2) -> evalComp (=) e1 e2 env
  | Gt (e1, e2) -> evalComp (>) e1 e2 env
  | Print e -> let () = match eval e env with
		 | UnitR -> print_string "()"
		 | IntR i -> print_int i
		 | BoolR b -> if b then print_string "True" else print_string "False" in
	       let () = print_string "\n" in
	       let () = flush stdout in UnitR
and evalInt f e1 e2 env =
  let (IntR i1) = eval e1 env in
  let (IntR i2) = eval e2 env in
  IntR (f i1 i2)
and evalIf cond thn els env =
  let (BoolR b) = eval cond env in
  if b then eval thn env else eval els env
and evalLet name vl exp env =
  let r = eval vl env in
  eval exp ((name,r)::env)
and evalBool f e1 e2 env =
  let (BoolR b1) = eval e1 env in
  let (BoolR b2) = eval e2 env in
  BoolR (f b1 b2)
and evalComp cmp e1 e2 env =
  let (IntR i1) = eval e1 env in
  let (IntR i2) = eval e2 env in
  BoolR (cmp i1 i2)

(* Type checking/inference: Figure out type for an expression.  Fail if the expression is not well-typed.*)
let rec typeof exp env = match exp with
  | Const _ -> Int
  | BConst _ -> Bool
  | Add (e1,e2) | Sub (e1,e2) | Mul (e1,e2)
  | Div (e1,e2) ->
     ( match (typeof e1 env, typeof e2 env) with
       | (Int,Int) -> Int
       | _ -> failwith "Arithmetic on non-integer argument(s)")
  | And (e1,e2)
  | Or (e1,e2) ->
     ( match (typeof e1 env, typeof e2 env) with
       | (Bool,Bool) -> Bool
       | _ -> failwith "BConst operation on non-Bool argument(s)")
  | Not e -> if (typeof e env) = Bool then Bool else failwith "Not of non-BConst"
  | Lt (e1,e2)
  | Gt (e1,e2) ->
     ( match (typeof e1 env, typeof e2 env) with
       | (Int,Int) -> Bool
       | _ -> failwith "Comparison of non-integer values" )
  | Eq (e1,e2) ->
     ( match (typeof e1 env, typeof e2 env) with
       | (Int,Int) | (Bool,Bool) | (Unit,Unit) -> Bool
       | _ -> failwith "Equality test on incompatible values" )
  | If (cond,thn,els) ->
     if not ((typeof cond env) = Bool) then failwith "If on non-BConst condition" else
       let (t1,t2) = (typeof thn env, typeof els env) in
       if (t1 = t2) then t1 else failwith "Different types for then/else branches"
  | Name name -> (try List.assoc name env with Not_found -> failwith ("Unbound variable "^name))
  | Let (name,vl,e) ->
     let t = typeof vl env in
     typeof e ((name,t)::env)
  | Print e -> let _ = typeof e env in Unit

let e1 = Let("x",Const 3,
	     Let("y", Const 7,
		 If(Gt(Name "y", Name "x"),Print (BConst true),Print (BConst false))))


(* Fix this: *)
let count_bindings (e : expr) =
let rec helper exp num = match exp with
| Add (e1,e2) -> helper e1 num + helper e2 num
| Sub (e1,e2) -> helper e1 num + helper e2 num
| Mul (e1,e2) -> helper e1 num + helper e2 num
| Div (e1,e2) -> helper e1 num + helper e2 num
| Lt (e1,e2) -> helper e1 num + helper e2 num
| Eq (e1,e2) -> helper e1 num + helper e2 num
| Gt (e1,e2) -> helper e1 num + helper e2 num
| Print e1 -> num
| Const e1 -> num
| BConst e1 -> num
| Name e1 -> num
| And (e1,e2) -> helper e1 num + helper e2 num
| Or (e1,e2) -> helper e1 num + helper e2 num
| Not e1 -> helper e1 num
| Let (e1,e2,e3) -> 1 + helper e2 num + helper e3 num
| If (e1,e2,e3) -> helper e1 num + helper e2 num + helper e3 num
in helper e 0
(* And this: *)
let has_shadow_binding (e : expr) =
let rec helper exp env tf = match exp with
| Add (e1,e2) -> helper e1 env tf|| helper e2 env tf
| Sub (e1,e2) -> helper e1 env tf|| helper e2 env tf
| Mul (e1,e2) -> helper e1 env tf|| helper e2 env tf
| Div (e1,e2) -> helper e1 env tf|| helper e2 env tf
| Lt (e1,e2) -> helper e1 env tf|| helper e2 env tf
| Eq (e1,e2) -> helper e1 env tf|| helper e2 env tf
| And (e1,e2) -> helper e1 env tf|| helper e2 env tf
| Or (e1,e2) -> helper e1 env tf|| helper e2 env tf
| Gt (e1,e2) -> helper e1 env tf|| helper e2 env tf
| Print e1 ->  tf
| Const e1 ->  tf
| BConst e1 ->  tf
| Name e1 ->  tf
| Not e1 -> helper e1 env  tf
| If (e1,e2,e3) -> helper e2 env  tf|| helper e3 env tf
| Let (e1,e2,e3) -> if (List.mem e1 env) then true else helper e2 env tf || helper e3 (e1::env) tf
in helper e [] false
