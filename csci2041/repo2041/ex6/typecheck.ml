(* Data type for programs with primitive types - Ex6 part 2 *)

(* Typing rules for new types and operations:
+ UConst
=> UConst : Unit
+ Print
e : Int => Print e : Unit
+ SConst
=> SConst : StringT
+ SFirst
e: StringT => SFirst e : StringT
+ SRest
e: StringT => SRest e : StringT
+ Concat
e1: StringT, e2: StringT => Concat (e1,e2) : StringT
*)

type expr =
  Add of expr * expr
  | Mul of expr * expr
  | Sub of expr * expr
  | Div of expr * expr
  | Const of int
  | Let of string * expr * expr
  | Name of string
  | If of expr * expr * expr
  | BConst of bool
  | And of expr * expr
  | Or of expr * expr
  | Not of expr
  | Eq of expr * expr
  | Lt of expr * expr
  | Gt of expr * expr
  | UConst
  | SConst of string
  | SFirst of expr
  | SRest of expr
  | Concat of  expr * expr
  | Print of expr


type result = BoolR of bool | IntR of int | UnitR | StringR of string

let rec eval expr env = match expr with
  | Add (e1,e2) -> evalInt (+) e1 e2 env
  | Mul (e1,e2) -> evalInt ( * ) e1 e2 env
  | Sub (e1,e2) -> evalInt (-) e1 e2 env
  | Div (e1, e2) -> evalInt (/) e1 e2 env
  | Const i -> IntR i
  | Let(n,v,b) -> let v1 = (eval v env) in (eval b ((n,v1)::env))
  | Name s -> List.assoc s env
  | If(cnd,thn,els) ->
     let (BoolR c) = eval cnd env in
     if c then (eval thn env) else (eval els env)
  | BConst b -> BoolR b
  | And(e1,e2) -> evalBool (&&) e1 e2 env
  | Or(e1,e2) -> evalBool (||) e1 e2 env
  | Not(e) -> let (BoolR b) = (eval e env) in BoolR (not b)
  | Eq(e1,e2) -> BoolR ((eval e1 env) = (eval e2 env))
  | Lt(e1,e2) -> evalComp (<) e1 e2 env
  | Gt(e1,e2) -> evalComp (>) e1 e2 env
  | Print e -> UnitR
  | SConst s -> StringR s
  | SFirst s -> evalStringF s env
  | SRest s -> evalStringR s env
  | Concat (e1,e2) -> evalString e1 e2 env
and evalInt f e1 e2 env =
  let (IntR i1, IntR i2) = (eval e1 env, eval e2 env) in
  IntR(f i1 i2)
and evalBool f e1 e2 env =
  let (BoolR b1, BoolR b2) = (eval e1 env, eval e2 env) in
  BoolR(f b1 b2)
and evalComp f e1 e2 env =
  let (IntR i1, IntR i2) = (eval e1 env, eval e2 env) in
  BoolR(f i1 i2)
and evalStringF s env =
  let (StringR s1) = (eval s env) in
  if (String.length s1 = 0) then StringR ("")
  else StringR (String.sub s1 0 1)
and evalStringR s env =
let (StringR s1) = (eval s env) in
 if (String.length s1 < 2) then StringR ("")
  else StringR (String.sub s1 1 (String.length s1 -1))
and evalString e1 e2 env =
  let (StringR s1, StringR s2) = (eval e1 env, eval e2 env) in
  StringR (s1 ^ s2)



let rec unbound exp bound = match exp with
  | Const _ | Print _ | BConst _ -> []
  | Add(e1,e2)
  | Mul(e1,e2)
  | Sub(e1,e2)
  | Div(e1,e2)
  | And(e1,e2)
  | Or(e1,e2)
  | Eq(e1,e2)
  | Lt(e1,e2)
  | Gt(e1,e2) -> (unbound e1 bound) @ (unbound e2 bound)
  | Not e -> unbound e bound
  | If(e1,e2,e3) -> (unbound e1 bound) @ (unbound e2 bound) @ (unbound e3 bound)
  | Name n -> if (List.mem n bound) then [] else [n]
  | Let(n,v,b) -> (unbound v bound) @ (unbound b (n::bound))

type expType = Bool | Int | StringT | Unit
let rec typeof exp env = match exp with
  | Const _ -> Int
  | BConst _ -> Bool
  | UConst _ -> Unit
  | SConst s -> StringT
  | SFirst e
  | SRest e -> StringT
  | Concat (e1,e2) -> (concatCheck e1 e2 env)
  | Add (e1,e2)
  | Mul (e1,e2)
  | Div (e1,e2)
  | Sub (e1,e2) -> (arithCheck e1 e2 env)
  | And (e1,e2) | Or (e1,e2) -> (boolCheck e1 e2 env)
  | Not e -> if (typeof e env) = Bool then Bool
             else failwith "Not of non-boolean"
  | Lt (e1,e2)
  | Gt (e1,e2)
  | Eq (e1,e2) -> (compCheck e1 e2 env)
  | Name n -> List.assoc n env
  | Let(n,v,b) -> let vt = (typeof v env) in (typeof b ((n,vt)::env))
  | If(c,thn,els) -> if (typeof c env) <> Bool then failwith "if with non-boolean condition"
                     else ( match (typeof thn env, typeof els env) with
                            | (Int, Int) -> Int
                            | (Bool, Bool) -> Bool
                            | _ -> failwith "mismatched cases in if")
and arithCheck e1 e2 env = match (typeof e1 env,typeof e2 env) with
  | (Int,Int) -> Int
  | _ -> failwith "Integer operation on noninteger argument(s)"
and boolCheck e1 e2 env = match (typeof e1 env, typeof e2 env) with
  | (Bool,Bool) -> Bool
  | _ -> failwith "Boolean operaiton on non-boolean argument(s)"
and compCheck e1 e2 env = match (typeof e1 env, typeof e2 env) with
  | (Int, Int) -> Bool
  | _ -> failwith "Comparison between noninteger arguments"
and concatCheck e1 e2 env = match (typeof e1 env, typeof e2 env) with
  | (StringT, StringT) -> StringT
  | _ -> failwith "Concatonation between nonstring arguments"
