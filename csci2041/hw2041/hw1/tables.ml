(* tables.ml - CSci 2041 HW 1 table slicer and dicer *)
(* Your Name Here *)

(* Free functions, don't question! *)
let read_lines () =
  let rec read_help acc =
    try read_help ((read_line ())::acc) with End_of_file -> List.rev acc
  in read_help []

let make_row delim str = List.map String.trim (Str.split (Str.regexp delim) str)

let rec write_row r delim = match r with
| [] -> ()
| h::[] -> print_endline h
| h::t -> let () = print_string h in
          let () = print_string delim in write_row t delim

let rec output_table od t = match t with
| [] -> ()
| r::rs -> let () = write_row r od in output_table od rs

(* Now your turn. *)

let rec table_of_stringlist delim rlist = [] (* replace this *)

let make_assoc (rc_list:string list list) = [] (* and this *)

let delete_column (d:int) alist = [] (* this one too *)

let move_column (src:int) (dst:int) alist = [] (* keep going... *)

let transpose_table alist = alist (* need this too! *)

(* last one! *)
let table_of_assoc (alist : (int*int*string) list) = [[]]

(* OK, more free stuff *)
let main ops id od =
  let sl = read_lines () in
  let rtable = table_of_stringlist id sl in
  let atab = make_assoc rtable in
  let rec apply ops tab = begin
    match ops with
    | [] -> tab
    | ('t',_,_)::tl -> apply tl (transpose_table tab)
    | ('m',s,d)::tl -> apply tl (move_column s d tab)
    | ('d',c,_)::tl -> apply tl (delete_column c tab)
    | _ -> failwith "unrecognized command"
  end in
  let atab' = apply ops atab in
  let ntable = table_of_assoc atab' in
  output_table od ntable
