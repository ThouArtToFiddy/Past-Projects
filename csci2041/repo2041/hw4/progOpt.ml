(* progOpt.ml -- optimizations for our little programming language *)

open Program

let is_constorname = function
 Const _ | BConst _ | LConst _ | Name _-> true
 | _ -> false
 let is_const = function
  Const _ | BConst _ | LConst _ -> true
  | _ -> false

(* insert (correct) definition of const_fold here *)
let rec const_fold e = match e with
  | (Const _) | (BConst _) | (LConst _ ) | Readint | Name _ -> e
  | Print e -> Print (const_fold e)
  | Apply (e1, e2) -> Apply (const_fold e1, const_fold e2)
  | Add (e1, e2) -> (match (const_fold e1,const_fold e2) with
    | (Const c1, Const c2) -> Const(c1+c2)
    | (e1, e2) -> (Add(const_fold e1, const_fold e2)) )
  | Mul (e1, e2) -> (match (const_fold e1,const_fold e2) with
    | (Const c1, Const c2) -> Const(c1*c2)
    | (e1, e2) ->  (Mul(const_fold e1, const_fold e2)) )
  | Sub (e1, e2) -> (match (const_fold e1,const_fold e2) with
    | (Const c1, Const c2) -> Const(c1-c2)
    | (e1, e2) ->  (Sub(const_fold e1, const_fold e2)) )
  | Div (e1, e2) -> (match (const_fold e1,const_fold e2) with
    | (Const c1, Const c2) -> Const(c1/c2)
    | (e1, e2) ->  (Div(const_fold e1, const_fold e2)) )
  | And (e1, e2) -> (match (const_fold e1,const_fold e2) with
    | (BConst true, BConst true) -> BConst true
    | (BConst false, _) -> BConst false
    | (_, BConst false) -> BConst false
    | (e1, e2) ->  (And(const_fold e1, const_fold e2)) )
  | Or (e1, e2) -> (match (const_fold e1,const_fold e2) with
    | (BConst true, _) -> BConst true
    | (_, BConst true) -> BConst true
    | (BConst false, BConst false) -> BConst false
    | (e1, e2) ->  (Or(const_fold e1, const_fold e2)) )
  | Not (e1) -> (match const_fold e1 with
    | (BConst true) -> BConst false
    | (BConst false) -> BConst true
    | e1 ->  (Not(const_fold e1)) )
  | Gt (e1, e2) -> (match (const_fold e1,const_fold e2) with
    | (Const c1, Const c2) -> if (c1 > c2) then BConst true else BConst false
    | (e1, e2) ->  (Gt(const_fold e1, const_fold e2)) )
  | Lt (e1, e2) -> (match (const_fold e1,const_fold e2) with
    | (Const c1, Const c2) -> if (c1 < c2) then BConst true else BConst false
    | (e1, e2) ->  (Lt(const_fold e1, const_fold e2)) )
  | Eq (e1, e2) -> (match (const_fold e1,const_fold e2) with
    | (Const c1, Const c2) -> if (c1 = c2) then BConst true else BConst false
    | (e1, e2) ->  (Eq(const_fold e1, const_fold e2)) )
  | Cons (e1, e2) -> (match (const_fold e1,const_fold e2) with
    | (LConst l1, LConst l2) -> LConst (l1@l2)
    | (e1, e2) -> (Cons(const_fold e1, const_fold e2)) )
  | Head (e) -> (match (const_fold e) with
    | (LConst l) -> if l = [] then failwith "head of empty list" else Head (LConst l)
    | (e) ->  (Head (const_fold e)) )
  | Tail (e) -> (match (const_fold e) with
    | (LConst l) -> if l = [] then failwith "tail of empty list" else Tail (LConst l)
    | (e) ->  (Tail (const_fold e)) )
  | While (c, body) -> (match const_fold c with
    | (BConst false) -> Seq []
    | (c) -> (While (const_fold c, const_fold body)) )
  | If (c, thn, els) -> (match const_fold c with
    | (BConst false) -> els
    | (BConst true) -> thn
    | (e) -> (If (const_fold c, const_fold thn, const_fold els)) )
  | Let (s, v, b) -> (match (const_fold v, const_fold b) with
    | (e1, e2) when (is_const e1 && is_const e2 ) -> e2
    | (e1, e2) -> Let (s, e1, e2) )
  | Seq (e) -> (
      let rec seqhelper lst = match lst with
    | [] -> []
    | h::[] -> [h]
    | h::t when (is_constorname h) -> seqhelper t
    | h::t -> h::(seqhelper t)
    in
    match seqhelper (List.map (const_fold) e) with
    | [o] when (is_constorname o) -> o
    | lst -> Seq lst )
  | Set (e1,e2) -> Set(e1,const_fold e2)
  | Fun (e1,e2,e3) -> Fun (e1,e2,const_fold e3)
  (* (seq
      (set x (- x 1))
      (if (> 1 0) x y)
      (if (< 1 0) x y)
      (while (> 1 0) (print y))
      (+ 1 2)
      (seq (let z (+ 2 3) (< 1 2)))
  ) *)
(* and seqhelper lst =
let rec helper lst acc = match lst with
| [] -> acc
| h::[] -> (const_fold h)::acc
| h::t when (is_constorname (const_fold h)) -> helper t acc
| h::t -> helper t ((const_fold h)::acc)
in helper lst [] *)
