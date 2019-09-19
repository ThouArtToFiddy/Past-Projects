open Bloom
open Printf

(* computes a thunk and times the computation. If your original code looked like
   let result = interestingfunctionof input1 input2 in ...
   then you can replace this with
   let (result, time) = time (fun () -> interestingfunctionof input1 input2) in ...
   to get both the result and the time spent computing it. *)
let time f =
  let t1 = Sys.time () in
  let r = f () in
  let t2 = Sys.time() in (r, t2 -. t1)

module BFTimeTest (B : memset)= struct
  (* make BFTimeTest a functor that acts on a memset struct B *)
  (* add functions:
    build_bf : B.elt list -> B.t * float
    test_bf : B.elt list -> int * float *)
    let build_bf lst =
    let (s, t) = time (fun () -> List.fold_left (fun acc ele -> B.add ele acc) B.empty lst ) in
    (s, t)

    let test_bf s lst =
    let (c, t) = time (fun () -> List.fold_left (fun acc ele -> if B.mem ele s then acc+1 else acc) 0 lst ) in
    (c ,t)

    let run_test insert_list test_list name =
      let (bf, t_build) = build_bf insert_list in
      let (fp_count, t_test) = test_bf bf test_list in
      printf "%-15s: build time = %8.4fs test time = %8.4fs false positives = %d\n" name t_build t_test fp_count
end

module BloomSInt = Bloom.Filter(SparseSet)(IntHash)
module BloomBInt = Bloom.Filter(BoolSet)(IntHash)
(* instantiate modules BloomSSTr,BloomBStr,SIntTest,BIntTest,SStrTest,BStrTest *)
module BloomSStr = Bloom.Filter(SparseSet)(StringHash)
module BloomBStr = Bloom.Filter(BoolSet)(StringHash)

module SIntTest = BFTimeTest(BloomSInt)
module SStrTest = BFTimeTest(BloomSStr)
module BIntTest = BFTimeTest(BloomBInt)
module BStrTest = BFTimeTest(BloomBStr)



let rec rand_list n acc = if n=0 then acc else (rand_list (n-1) ((Random.int ((1 lsl 30)-1))::acc))

let file_lines fname =
  let in_file = open_in fname in
  let rec loop acc =
    let next_line = try Some (input_line in_file) with End_of_file -> None in
    match next_line with
    | (Some l) -> loop (l::acc)
    | None -> acc
  in
  let lines = try List.rev (loop []) with _ -> [] in
  let () = close_in in_file in
  lines

let insert_ilist = rand_list 200 []
let test_ilist = rand_list 1000000 []
(* insert lines to run SIntTest and BIntTest here *)
let whatever1 = SIntTest.run_test insert_ilist test_ilist "SparseInt" (*Not sure how we were supposed to do it*)
let uselessthing2 = BIntTest.run_test insert_ilist test_ilist "BoolInt" (*But the only way for it to work for me*)
                                                                       (*Was to save the run_test to arbitrary value*)
let _ = flush stdout
let insert_slist = file_lines "./top-2k.txt"
let test_slist = file_lines "./top-1m.txt"
(* insert lines to run SStrTest and BStrTest here *)
let irrelaventvalue3 = SStrTest.run_test insert_slist test_slist "SparseString"
let doesntmatter4 = BStrTest.run_test insert_slist test_slist "BoolString"

let _ = flush stdout
