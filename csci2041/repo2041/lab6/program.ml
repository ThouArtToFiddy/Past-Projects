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

(* Add two well-typed programs below *)
let prog1 = Let("x", Const 5, If(Gt(Name "x", Const 0), BConst true, BConst false))

let prog2 = Let("pow", Const 7, Let("temp1", Div (Name "pow", Const 2), If(Eq(Mul(Name "temp1", Const 2), Name "pow"), Mul( Name "pow", Const 3 ), Div (Name "pow" , Const 2))))

let badtype1 = Let("x", Mul(Const 7, BConst true),
		   If (Const 1, Const 3, Print(BConst false)))

(* Add two programs that will fail to type-check below *)
let err1 = Mul( Const 2, BConst false )

let err2 = If (Const 1, BConst true, BConst false)

(* here's where you define find_constants *)
let find_constants (e : expr) =
let rec helper exp acc = match exp with
| Const n -> Const n :: acc
| BConst n -> BConst n :: acc
| Add (e1, e2) | Sub (e1, e2) | Mul (e1, e2) | Div (e1, e2) | And (e1, e2) | Or (e1, e2) | Lt (e1, e2) | Gt (e1, e2) | Eq (e1, e2) -> (helper e1 acc) @ (helper e2 acc)
| Let (_, e2, e3) -> (helper e2 acc) @ (helper e3 acc)
| If (e1, e2, e3) -> (helper e1 acc) @ (helper e2 acc) @ (helper e3 acc)
| Print e1 -> helper e1 acc
| _ -> []
in helper e []

(* here's where you define rm_vars *)
let rm_vars (e : expr) =
let rec helper exp env = match exp with
| Let (e1, e2, e3) -> Let (e1, helper e2 env, helper e3 ((e1, helper e2 env)::env))
| Name n -> (match List.assoc n env with Const n -> Const 0 | BConst n -> BConst false )
| If (e1, e2, e3) -> If (helper e1 env, helper e2 env, helper e3 env)
| Add (e1, e2) -> Add (helper e1 env, helper e2 env)
| Sub (e1, e2) -> Sub (helper e1 env, helper e2 env)
| Mul (e1, e2) -> Mul (helper e1 env, helper e2 env)
| Div (e1, e2) -> Div (helper e1 env, helper e2 env)
| And (e1, e2) -> And (helper e1 env, helper e2 env)
| Or (e1, e2) -> Or (helper e1 env, helper e2 env)
| Lt (e1, e2) -> Lt (helper e1 env, helper e2 env)
| Gt (e1, e2) -> Gt (helper e1 env, helper e2 env)
| Eq (e1, e2) -> Eq (helper e1 env, helper e2 env)
| Print e1 -> Print (helper e1 env)
| Const n -> Const n
| BConst n -> BConst n
| Not n -> Not (helper n env)
in helper e []
