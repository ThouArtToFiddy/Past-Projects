module type Elt = sig
  type k
  type v
  val eq : k -> k -> bool
end

module type Dict = sig
  type t
  type k
  type v
  val empty : t
  val add : k -> v -> t -> t
  val lookup : k -> t -> v
end

(* Add ListDict Functor here *)
module EqListDict = struct end

(* Add DefaultElt signature here *)
module type DefaultElt = sig end

(* DefaultDict functor: *)
module DefaultDict = struct end

(* DefaultDictFunctor: *)
module DefaultDictFunctor = struct end
