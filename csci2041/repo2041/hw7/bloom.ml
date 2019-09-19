(* Bloom Filter implementation.  This file will not compile as is. *)
module type memset = sig
    type elt (* type of values stored in the set *)
    type t (* abstract type used to represent a set *)

    val empty : t
    val is_empty : t -> bool
    val add : elt -> t -> t
    val from_list : elt list -> t
    val union : t -> t -> t
    val inter : t -> t -> t
    val mem : elt -> t -> bool
  end

(* Define the hasher signature here *)
module type hasher = sig
    type t
    val hashes : t -> int list
  end
(* Define SparseSet module here, using the Set.Make functor *)
module SparseSet = struct
    include Set.Make(struct type t = int let compare = Pervasives.compare end)
    let from_list lst = List.fold_left (fun acc ele -> add ele acc) empty lst
  end

(* Fill in the implementation of the memset signature here.  You'll need to expose the elt type *)
module BoolSet : (memset with type elt = int)  =
  struct
    type elt = int
    type t = bool array
    (* element-wise and of two arrays: *)
    let rec (|&) s1 s2 = let (short,long) =
      if (Array.length s1 < Array.length s2) then (s1,s2) else (s2,s1) in
      Array.mapi (fun i li -> if i < (Array.length short) then li && short.(i) else false) long
    (* element-wise or of two arrays: *)
    let rec (|@) s1 s2 = let (short,long) =
      if (Array.length s1 < Array.length s2) then (s1,s2) else (s2,s1) in
      Array.mapi (fun i li -> if i < (Array.length short) then li || short.(i) else li) long

    (*creates an array of all falses up till the ith place, then a true*)
    let make_arr_t i =
    let arr = Array.make (i+1) false in
    Array.set arr i true ; arr

    let empty = [||]

    let is_empty arr = arr = [||]

    let mem i arr = if Array.get arr i then true else false

    let add i arr =
    let newval = make_arr_t i in (|@) arr newval

    let union a1 a2 = (|@) a1 a2

    let inter a1 a2 = (|&) a1 a2

    let from_list lst = List.fold_left (fun acc ele -> union (make_arr_t ele) acc ) [||] lst

  end

(* Fill in the implementation of a Bloom.Filter, matching the memset signature, here. *)
(* You will need to add some sharing constraints to the signature below. *)
module Filter(S : memset with type elt = int)(H : hasher) : memset with type elt = H.t
= struct
    type elt = H.t
    type t = S.t

    (* Implement the memset signature: *)
    let mem e s = List.fold_left (fun acc ele -> (S.mem ele s ) && acc ) true (H.hashes e)

    let empty = S.empty

    let is_empty = S.is_empty

    let add e s = List.fold_left (fun acc hashele -> S.add hashele acc) s (H.hashes e)

    let from_list lst = List.fold_left (fun acc elt -> add elt acc ) empty lst

    let union s1 s2 = S.union s1 s2

    let inter s1 s2 = S.inter s1 s2

  end

(* A hashparam module for strings... *)
module StringHash = struct
    type t = string (* I hash values of type string *)
    let hlen = 15
    let mask = (1 lsl hlen) - 1
    let hashes s =
      let rec hlist n h = if n = 0 then [] else (h land mask)::(hlist (n-1) (h lsr hlen)) in
      hlist 4 (Hashtbl.hash s)
  end

(* Add the IntHash module here *)
module IntHash = struct
    type t = int
    let hashes n = [(795*n + 962) mod 1031; (386*n + 517) mod 1031; (937*n + 693) mod 1031]
  end
