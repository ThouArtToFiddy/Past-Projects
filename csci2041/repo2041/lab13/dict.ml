(* dict.ml - dictionary implementations for lab 13 *)

(* eventually, you'll add the Dict signature for dictionaries here *)
module type Dict = sig
type ('k,'v) t
val empty : ('k, 'v) t
val add : 'k -> 'v -> ('k, 'v) t -> ('k, 'v) t
val update : 'k -> 'v -> ('k, 'v) t -> ('k, 'v) t
val lookup : 'k -> ('k, 'v) t -> 'v
end

(* Fill in the definition of dictionaries using functions, e.g. (f key) = val *)
module FunDict : Dict = struct
type ('k,'v) t = 'k -> 'v
  let empty = fun k -> raise Not_found
  let add key vl d = fun k -> if (k=key) then vl else (d k)
  let update key vl d = fun k -> if (k=key) then vl else (d k)
  let lookup key d = d key
  end

(* You'll want to restrict this with a signature eventually: *)
module ListDict : Dict = struct
    type ('k,'v) t = ('k * 'v) list
    let empty = []
    let add k v d = (k,v)::d
    let lookup k d = List.assoc k d
    let rec update k v d = match d with
      | [] -> [(k,v)]
      | (key,_)::t when key=k -> (k,v)::t
      | kv::t -> kv::(update k v t)
    let rec fold f a d = List.fold_left f a d
  end



module DictTest(DT1: Dict)(DT2: Dict) = struct
    let test ins_list testlist =
    let d1 = List.fold_left (fun d (k,v) -> DT1.add k v d) DT1.empty ins_list in
    let d2 = List.fold_left (fun d (k,v) -> DT2.add k v d) DT2.empty ins_list in
    let rec helper d1 d2 testlst acc = match testlst with
    | [] -> acc
    | key::t ->(
    let v1 = try Some (DT1.lookup key d1) with Not_found -> None in
    let v2 = try Some (DT2.lookup key d2) with Not_found -> None in
    if v1 = v2 then helper d1 d2 t acc
    else helper d1 d2 t (key::acc))
    in helper d1 d2 testlist []
  end



module FLTester = DictTest (FunDict) (ListDict)

let agree = match (FLTester.test [(("a",1);("b",2); ("c",3) )] ["a"; "b"; "c"; "d"]) with
| [] -> true
| _ -> false
